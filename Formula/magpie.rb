class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4903/magpie-cli-darwin-arm64"
      sha256 "afd2d5107b1ddd424e363953eecec8691d607ef4e3810a381d7379a80e3faf74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4903/magpie-cli-darwin-amd64"
      sha256 "8165e3d44a328603ed9b276e971e17b74a2621236702d2eebc130e39e0a09dda"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4903/magpie-cli-linux-arm64"
      sha256 "13e3189063ea3c5c2bd624a85485b6018b4766ddf3231c9fcf09f0b584137b21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4903/magpie-cli-linux-amd64"
      sha256 "a0c76666e6cacc8028edc3bce3d1d5f6bd2f9cc4e54cf418eabdcaef4611d153"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
