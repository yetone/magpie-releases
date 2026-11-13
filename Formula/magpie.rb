class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4069/magpie-cli-darwin-arm64"
      sha256 "e0d0aa7f10bc67bde8f238268e838a246ae8d2164d911c5ca271cb2cb223dca4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4069/magpie-cli-darwin-amd64"
      sha256 "45503133e665e8c458757c2445306e3cc1eb5783782dfca24867361eb3e1c213"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4069/magpie-cli-linux-arm64"
      sha256 "b1cc24da2893a8978e0e9de0fc1a40bcee765fff99ea81ea14e998aebfb98bf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4069/magpie-cli-linux-amd64"
      sha256 "1f625b1430c105d4738b6a60ca79de67642f3c5d52aff6a39bc799b2c6645afe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
