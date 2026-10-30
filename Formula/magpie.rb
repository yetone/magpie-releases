class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2158/magpie-cli-darwin-arm64"
      sha256 "3ed670dcf3c86fc4682d54ecbf9aa59dc52c5bb5a371ea2c8cd7a26d90d9bd9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2158/magpie-cli-darwin-amd64"
      sha256 "a0d15600d32ae0ce7319e8c41eca69a002368b64865dc3e6155c4fbbf8617a84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2158/magpie-cli-linux-arm64"
      sha256 "5f1ba1849bcb081c5f23fd00828948f28c6af6a12826d444c986f4e0040b1cc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2158/magpie-cli-linux-amd64"
      sha256 "aa7b9ad63a0fc1fbde0d03a3f81129c5cca668fc85d71a5a425afdb81e7fcb48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
