class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2360/magpie-cli-darwin-arm64"
      sha256 "442c2ee5f3b2a4d287f1102550c5aae90c6522cababf32e0ad19bec188275ac9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2360/magpie-cli-darwin-amd64"
      sha256 "fbd1ce44e77fb233986b4896e7ec675739a6cc2a5cac6aaac4983db947e3ac7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2360/magpie-cli-linux-arm64"
      sha256 "05408433e6d2c7cd10cb5ed4c8083dc929d7b3d6c3b50b6a1933c0163c5e3143"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2360/magpie-cli-linux-amd64"
      sha256 "b3eeef322abda2ff9dff39fac240ed96b926f1d09b50463014eb4de2fa727225"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
