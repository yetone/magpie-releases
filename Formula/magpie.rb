class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1927/magpie-cli-darwin-arm64"
      sha256 "747d9a57c1afa5e8eae9691f2f5a350ce16d3b2e2b931fc2eeb42aea562adbf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1927/magpie-cli-darwin-amd64"
      sha256 "bcaf1634af2e69da97d5d6f23747d6a20c8f5acbe13448af4db473c74d6f5950"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1927/magpie-cli-linux-arm64"
      sha256 "f2296f180e6c09470d44e9c77120bde83f9b9fa278e1f9d50da863b4dc8b071b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1927/magpie-cli-linux-amd64"
      sha256 "db52da1da9bbc302be7b4f96ba69e287d7bee2496ae6fe5390cba04294820340"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
