class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3223/magpie-cli-darwin-arm64"
      sha256 "681f04ddef1750e730bd85169fed427aaea9a1d864e1a7f9f03c820bfb10768f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3223/magpie-cli-darwin-amd64"
      sha256 "02df72c2c3b1eebd12478aacf45f362a40abb177859ed9c5b66b0b2c9f7463f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3223/magpie-cli-linux-arm64"
      sha256 "a8b8c49a0a000140c9d371dd01d7461c88b4ee258a68bdbe70f8329c8d4bc53f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3223/magpie-cli-linux-amd64"
      sha256 "be53ecf4d26ed6faae29468bea98be6098d692c5a6576f9ddbd19df6c78ac2b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
