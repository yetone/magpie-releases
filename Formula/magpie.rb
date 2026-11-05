class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3023/magpie-cli-darwin-arm64"
      sha256 "9901faee2f2c51f7430eeee06ab4b2c9c01dd014f20d977065da0a1915ebb3b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3023/magpie-cli-darwin-amd64"
      sha256 "50075aaf21c70162a5acf48586c16418fc2617f2e396a95a84c8b10d0b4da2ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3023/magpie-cli-linux-arm64"
      sha256 "e96237c9ac34d2098c97c8b7e0e2d787a2d4320d8afe26be203d0ee92c8e6c4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3023/magpie-cli-linux-amd64"
      sha256 "c6ce708cf15fe90cb714802c50a97584ea3f8c624cd20825d58e8be138c08093"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
