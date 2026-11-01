class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2564/magpie-cli-darwin-arm64"
      sha256 "6d2c5ba66a60b88ab1808d4a5924f663623514433e58f6b946bf92271344deb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2564/magpie-cli-darwin-amd64"
      sha256 "b29ba9207b4ec38cb7c8aaf27fc73b0c3752d8f8b1bd8899453234458c06fe99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2564/magpie-cli-linux-arm64"
      sha256 "058e2ff0b14d2d2565603db2002095f6991b3cb1626c02c3d13aae29de5ce9d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2564/magpie-cli-linux-amd64"
      sha256 "35ed9544874518eeeaa80a12cc9b062c6ae30bdcb1af1a984443a10ad2325d98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
