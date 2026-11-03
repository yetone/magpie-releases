class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2862/magpie-cli-darwin-arm64"
      sha256 "2a37773f4a3b3e61de75ec93858a43a2202196a36188d48174cc99d03ca31b72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2862/magpie-cli-darwin-amd64"
      sha256 "b3e001d9b370f5bd63050309bb0aa4a40603ad7a2d9f0968ef32311094655acc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2862/magpie-cli-linux-arm64"
      sha256 "0e8655aa1e4cfb9411beb7bd3be0184df4fe5668b4b69ede7d720fe7175ea918"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2862/magpie-cli-linux-amd64"
      sha256 "b51cd9822ae0d4f57528bcfd0d1b067def7de141a454d158c179552cc240cd0b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
