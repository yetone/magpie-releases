class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1088/magpie-cli-darwin-arm64"
      sha256 "05bdc4ae14b62b034e6a850c20010dd0340d2c259f84449d3ec55632805746f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1088/magpie-cli-darwin-amd64"
      sha256 "513565bc624ade6d7b09b521d1aa5931313dc1736f33d1310d3f37da01c26738"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1088/magpie-cli-linux-arm64"
      sha256 "4d6135a4328a80d73e267e331bc979a6e61f7c2f892a65a29430f92b7d331c2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1088/magpie-cli-linux-amd64"
      sha256 "4a7b88234249a37ae61bad0f59bac6699e1bcb1101ec148ec3d0d5745f7f5ad2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
