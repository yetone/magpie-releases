class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4964/magpie-cli-darwin-arm64"
      sha256 "3b434e2b3f8178e71372b4e8fe787f36f3bb3fb6ecc779738e250790002e9afb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4964/magpie-cli-darwin-amd64"
      sha256 "e49669526fd452013c047d4bf7dee0eb9cc9ef6f17280ba2ba82b064f8470736"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4964/magpie-cli-linux-arm64"
      sha256 "73a012f086cdeed4e8918fd9b6571f72c15319b63660e7b0ba8c1a963f8394f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4964/magpie-cli-linux-amd64"
      sha256 "ab4fdaa5be384970024c456ae9db6321c05d242f5214eecfc4bc1df5de4a89b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
