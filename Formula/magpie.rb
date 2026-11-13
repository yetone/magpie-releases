class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4065/magpie-cli-darwin-arm64"
      sha256 "a88825e21361a8f76d3b936cfec377c8cfae0c97bd8ebff69931b60d7c545e91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4065/magpie-cli-darwin-amd64"
      sha256 "4a881f6769a0d8b26834d22ebe76ca638c6eae64fec6cfb154947cddfb57f7d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4065/magpie-cli-linux-arm64"
      sha256 "c5875d7d9bc36672e9a73beb19652d3f33132154f322130a98f13a74a2bf3cd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4065/magpie-cli-linux-amd64"
      sha256 "4535bbbaf3ab2cc4ae3d88f7132d77c89b370409e75d5dc10f667a7352ba595e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
