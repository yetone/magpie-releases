class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.988/magpie-cli-darwin-arm64"
      sha256 "e7cc5842019145654556ec077c8c7ea810b6d87ccaa13b43cf31710b5c665b2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.988/magpie-cli-darwin-amd64"
      sha256 "d508445c6153b69955f88a09949c286b885535f6cd29aabadfd66b49040e5fc2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.988/magpie-cli-linux-arm64"
      sha256 "dfdabb13568818b98d560e8b1ac8417c5c3f61a40ea1089ae86d88159c03d8bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.988/magpie-cli-linux-amd64"
      sha256 "27a641b388aff0258e9faeb35d12e8d3fbd220e822ee4a61ed1f8fc623c896ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
