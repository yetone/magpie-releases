# magpie from its release assets: the same signed builds every other install
# runs, so nothing is compiled here. sources.json holds the version and each
# asset's sha256 from the release's SHA256SUMS.
#
# magpie sees it runs from /nix/store and leaves updating to Nix
# (internal/update/packaged.go in yetone/magpie), and starts at login and
# from links through the profile's stable path, not the store path
# (internal/appdir/launcher.go).
{
  lib,
  stdenv,
  fetchurl,
  sources,
  cli ? false,
  # Linux, the desktop build
  autoPatchelfHook,
  makeWrapper,
  wrapGAppsHook3,
  gtk3,
  webkitgtk_4_1,
  libsoup_3,
  glib,
  glib-networking,
  gdk-pixbuf,
  fontconfig,
  libX11,
  wayland,
  xdg-utils,
  bun,
  # macOS
  unzip,
}:

let
  inherit (stdenv.hostPlatform) system;
  arch =
    {
      x86_64-linux = "linux-amd64";
      aarch64-linux = "linux-arm64";
      x86_64-darwin = "darwin-amd64";
      aarch64-darwin = "darwin-arm64";
    }
    .${system} or (throw "magpie: no release build for ${system}");
  asset =
    if cli then
      "magpie-cli-${arch}"
    else if stdenv.hostPlatform.isDarwin then
      "magpie-${arch}.zip"
    else
      "magpie-${arch}";
  src = fetchurl {
    url = "https://github.com/yetone/magpie-releases/releases/download/v${sources.version}/${asset}";
    sha256 = sources.assets.${asset} or (throw "magpie: ${asset} is not in nix/sources.json");
  };
  meta = {
    description =
      "Pick the model each AI coding agent on your machine uses"
      + lib.optionalString cli " (terminal build)";
    homepage = "https://usemagpie.ai/";
    downloadPage = "https://github.com/yetone/magpie-releases/releases";
    license = lib.licenses.mit;
    mainProgram = "magpie";
    platforms = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];
  };
in
if cli then
  # A static Go binary on Linux, a signed one on macOS: nothing to patch.
  stdenv.mkDerivation {
    pname = "magpie-cli";
    inherit (sources) version;
    inherit src meta;
    dontUnpack = true;
    dontStrip = true;
    dontPatchELF = true;
    installPhase = ''
      runHook preInstall
      install -Dm755 $src $out/bin/magpie
      runHook postInstall
    '';
  }
else if stdenv.hostPlatform.isDarwin then
  # The notarised app, untouched: its signature covers every file in it.
  stdenv.mkDerivation {
    pname = "magpie";
    inherit (sources) version;
    inherit src meta;
    nativeBuildInputs = [ unzip ];
    sourceRoot = ".";
    dontStrip = true;
    dontFixup = true;
    installPhase = ''
      runHook preInstall
      mkdir -p $out/Applications $out/bin
      cp -R magpie.app $out/Applications/
      ln -s $out/Applications/magpie.app/Contents/MacOS/magpie $out/bin/magpie
      runHook postInstall
    '';
  }
else
  stdenv.mkDerivation {
    pname = "magpie";
    inherit (sources) version;
    inherit src meta;
    dontUnpack = true;
    dontStrip = true;

    nativeBuildInputs = [
      autoPatchelfHook
      makeWrapper
      wrapGAppsHook3
    ];
    buildInputs = [
      gtk3
      webkitgtk_4_1
      libsoup_3
      glib
      glib-networking
      gdk-pixbuf
      fontconfig
      libX11
      wayland
    ];

    installPhase = ''
      runHook preInstall
      # named magpie still: WebKit's data folder and the window class
      # follow the program's name
      install -Dm755 $src $out/libexec/magpie/magpie
      install -Dm644 ${./magpie.svg} $out/share/icons/hicolor/scalable/apps/magpie.svg
      mkdir -p $out/share/applications
      cat > $out/share/applications/magpie.desktop <<DESKTOP
      [Desktop Entry]
      Type=Application
      Name=magpie
      Comment=Pick the model each AI coding agent on your machine uses
      Exec=$out/bin/magpie %u
      Icon=magpie
      StartupWMClass=magpie
      Categories=Development;Utility;
      MimeType=x-scheme-handler/magpie;
      Terminal=false
      DESKTOP
      runHook postInstall
    '';

    # One wrapper, $out/bin/magpie, which is what magpie writes into its
    # desktop and autostart entries (as MAGPIE_EXECUTABLE, mapped to the
    # profile's link to it), so they never name the store path of a build
    # that is collected after an upgrade. The Bun magpie downloads to run
    # plugins is built for other systems' glibc and doesn't start on
    # NixOS, so it runs nixpkgs' Bun unless MAGPIE_BUN says otherwise.
    dontWrapGApps = true;
    postFixup = ''
      makeWrapper $out/libexec/magpie/magpie $out/bin/magpie \
        "''${gappsWrapperArgs[@]}" \
        --set MAGPIE_EXECUTABLE $out/bin/magpie \
        --set-default MAGPIE_BUN ${lib.getExe bun} \
        --suffix PATH : ${lib.makeBinPath [ xdg-utils ]}
    '';
  }
