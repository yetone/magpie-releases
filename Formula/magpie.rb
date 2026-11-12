class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3901/magpie-cli-darwin-arm64"
      sha256 "6ae266d7af6a4ac2f61e237c3afd1ce7e4a3b904aa956e54e3e84f30b3d6ec4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3901/magpie-cli-darwin-amd64"
      sha256 "36e2efc6a9bc2f2c824ab5797e02711885e63f6f64713de2e77a098d9d25d789"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3901/magpie-cli-linux-arm64"
      sha256 "2fd0e3ecb2859862be5e25e129ed00c3c3992cd2fcde9a9ffb039aee2a17f2a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3901/magpie-cli-linux-amd64"
      sha256 "d52cfe06682b67fca4bf8636fabf67e3b1aee8e194a20f2822464318c6ce3691"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
