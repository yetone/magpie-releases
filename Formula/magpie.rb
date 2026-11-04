class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2993/magpie-cli-darwin-arm64"
      sha256 "fc37ff3bbcf9d27af0ba04e89fae4c8b790c50cbfab9fe30f555adf7126917f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2993/magpie-cli-darwin-amd64"
      sha256 "d5c0926fd155596b5234854299040223c657a3da7bd4c2654678b9bf06d2b362"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2993/magpie-cli-linux-arm64"
      sha256 "f871152ff473bab587f62c99400c0d04c04de25cb8c43304e0aa185f4cd0df81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2993/magpie-cli-linux-amd64"
      sha256 "671ef969cad5ef5d2bc58e2f550a6b5e3a4081b3eaf549b61a368e10de7e04ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
