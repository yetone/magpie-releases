class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1065/magpie-cli-darwin-arm64"
      sha256 "84f2507a9d6738b5fcc4d0dfc2c9d3d5dd055ef76ba14bfefde3478088ff1ae3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1065/magpie-cli-darwin-amd64"
      sha256 "81841e1450b8f21c6b73590cb655ffa2f34dd4976dd4ffefd38c205c107e1829"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1065/magpie-cli-linux-arm64"
      sha256 "767766020b48c29e6ab5cffd03a0f23273abfcf5d7c957b5ffd7d46010139e8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1065/magpie-cli-linux-amd64"
      sha256 "cce898dd86bff8484dba3072f2b72ddca90fd9a11f8107dc5f6535d4276fcaab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
