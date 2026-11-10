class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3538/magpie-cli-darwin-arm64"
      sha256 "32c1b8824443311fe32ff89b301d5dd59495cd0ee72892b3675b354cf958f6bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3538/magpie-cli-darwin-amd64"
      sha256 "e8d5723b3f83211a0c899ac16ea6d58b1a5e2f80a8c02cee7059fcd82fa34176"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3538/magpie-cli-linux-arm64"
      sha256 "831e60323941fd8e58531a313f69e50edb79b1e522f81ccfb6d0aa2fc577b94b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3538/magpie-cli-linux-amd64"
      sha256 "b5b30fbb6237406c9262376d8e0da18f98d6d1c1c6f054dd9915c7970c10d97a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
