class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1892/magpie-cli-darwin-arm64"
      sha256 "dca323befeed13feff09b9bceb99955a57df692762ffbbd8e710eeef7ac5e89a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1892/magpie-cli-darwin-amd64"
      sha256 "f2c1662717fe3cf475b95f0751b9a77c37f804a6af4a5948fe40a9470adb61d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1892/magpie-cli-linux-arm64"
      sha256 "ee9cd6134519607f2fe4771483617671e282263f488851106c747a3a6ee44807"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1892/magpie-cli-linux-amd64"
      sha256 "8b6133c8db21b2c7b1ea00c8fee1921dddecc32bbb503808837babb31b822689"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
