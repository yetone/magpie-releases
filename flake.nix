{
  description = "magpie: pick the model each AI coding agent on your machine uses";

  # The packages wrap the release's own signed builds, at the version
  # nix/sources.json names. scripts/update-tap.sh rewrites that file from the
  # release's SHA256SUMS on every release, beside the Homebrew tap.
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        # nixpkgs 26.11 dropped x86_64-darwin
        "aarch64-darwin"
      ];
      forAll = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
      sources = builtins.fromJSON (builtins.readFile ./nix/sources.json);
    in
    {
      packages = forAll (pkgs: rec {
        magpie = pkgs.callPackage ./nix/package.nix { inherit sources; };
        magpie-cli = pkgs.callPackage ./nix/package.nix {
          inherit sources;
          cli = true;
        };
        default = magpie;
      });

      apps = forAll (pkgs: rec {
        magpie = {
          type = "app";
          program = "${self.packages.${pkgs.stdenv.hostPlatform.system}.magpie}/bin/magpie";
          meta.description = "magpie, the desktop app";
        };
        magpie-cli = {
          type = "app";
          program = "${self.packages.${pkgs.stdenv.hostPlatform.system}.magpie-cli}/bin/magpie";
          meta.description = "magpie, the terminal build";
        };
        default = magpie;
      });

      overlays.default = final: prev: {
        magpie = final.callPackage ./nix/package.nix { inherit sources; };
        magpie-cli = final.callPackage ./nix/package.nix {
          inherit sources;
          cli = true;
        };
      };
    };
}
