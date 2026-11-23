class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4703/magpie-cli-darwin-arm64"
      sha256 "e4f4b7ff773c9aaeda313457a3ecab844a73026989d28790beefde2c588a1724"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4703/magpie-cli-darwin-amd64"
      sha256 "4a9683f8ed3945e9df2a137e8892bdd2757e53bd1bcb269a99fe4e21bbfe7f5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4703/magpie-cli-linux-arm64"
      sha256 "8323b2243440a7cd71a3b1aabbb4e6acba2d3cdc0f8d32bba6f47a37023e2175"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4703/magpie-cli-linux-amd64"
      sha256 "2e3f14554bcc8735f3c6a707d62bb7933c16b994cb39343408f7a70d086b9255"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
