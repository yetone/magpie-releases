class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4953/magpie-cli-darwin-arm64"
      sha256 "53ceb4c5a9291208c3404eea82a076146364f1d01759265b4582868277dfd6e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4953/magpie-cli-darwin-amd64"
      sha256 "7202fe5d165d4b061b5a00b38008a93c49e6c3ab586d69f6c97f27f57042af48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4953/magpie-cli-linux-arm64"
      sha256 "d768dafe29c4120a19e79b094ca2c96dbf6a4a9912c460d8a5dab4a78d9c42ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4953/magpie-cli-linux-amd64"
      sha256 "a8bf083c561cfc1e25b20ff900ac8c06cdbb650b26cc1ad9a4e646cb15b088ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
