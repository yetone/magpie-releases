class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2246/magpie-cli-darwin-arm64"
      sha256 "09c28fd4a7ecaf4cbd2f3e63c8769424deb3432063056161bd3287cda3a97c35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2246/magpie-cli-darwin-amd64"
      sha256 "ac27e45c675e6e7c21b7e0d2f140377f14b60cf6574b513160da5af64615b859"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2246/magpie-cli-linux-arm64"
      sha256 "f65e02afa5493d425c4bd459ee99496ec2d5f5ecb2e8962d6448a2e8f04e4892"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2246/magpie-cli-linux-amd64"
      sha256 "f9841b01f2933d5e27d0f1a8ffce9b6832dfc1133d8b63f99d8ab322492f888b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
