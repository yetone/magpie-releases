class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4446/magpie-cli-darwin-arm64"
      sha256 "ae62acc8574823d4b1d1b1a2dc413efbb666f766e505b8fd63a7fafdca6f1c0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4446/magpie-cli-darwin-amd64"
      sha256 "2f86cfcfea4541c025b270575bd14df005986affeacd7dac54d79fc136f0c550"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4446/magpie-cli-linux-arm64"
      sha256 "4ccae9f6bd6c6b984e9ca7bffba9373c79d3755bbc249fd25d735577d7a82ffd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4446/magpie-cli-linux-amd64"
      sha256 "ec5298358b02d8cfa39b5aab8df1071dec042d7fd4934fd6f7e18cfb23e06a5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
