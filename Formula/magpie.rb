class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1920/magpie-cli-darwin-arm64"
      sha256 "7f016fcc593f3065cad1ae04e3b8fd3df474825b5e883ff5a76033bc5c918d76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1920/magpie-cli-darwin-amd64"
      sha256 "44492e84a90ef19c3a062edb7b719ee1a4cdb0edccd8aa522f22255e517c7386"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1920/magpie-cli-linux-arm64"
      sha256 "cc427ff9fc102eab2049c6fa54422325bc8f8c265ab199a62a68f8d0d4f5e2a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1920/magpie-cli-linux-amd64"
      sha256 "459ed9c12e7ce066994d513c75ea58190ec98366f75e4814065ad7e1babdd5a2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
