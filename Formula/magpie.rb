class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3869/magpie-cli-darwin-arm64"
      sha256 "7ed19e4c9b5ae8e2a6c09f6c9e429b02b9957d4d3b60d9f30e56186b146ac60a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3869/magpie-cli-darwin-amd64"
      sha256 "3433f94b8906e5519f434275071e3a61414a50f5173ba2dfe32864a4db1a7b25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3869/magpie-cli-linux-arm64"
      sha256 "8cf080925e2ea2aa93ec87ce945e15fd975899e5028bc74de3047ca3248b99ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3869/magpie-cli-linux-amd64"
      sha256 "c386c10267e739c7f37f4d81b717f32609b9313a62c4543a26efa3d0d2b1c521"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
