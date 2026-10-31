class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2303/magpie-cli-darwin-arm64"
      sha256 "2bc4eb7192dff00f8a1cbe3d7aa5d421952d9c065924defee311234357f51b90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2303/magpie-cli-darwin-amd64"
      sha256 "538eff2cbb05c4b0f258bdbcc99072d1f04e58ca2cd9e91f917bcaaf5a9dd7c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2303/magpie-cli-linux-arm64"
      sha256 "faca322964be7672f11a0c3d90081db7930216df6679a53a7a177d2ab88fd7ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2303/magpie-cli-linux-amd64"
      sha256 "25975b28769455bfb09c7ec6b3e6f2731d85638b758aaa0f349ff95b77239cd8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
