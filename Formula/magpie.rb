class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4382/magpie-cli-darwin-arm64"
      sha256 "8086a605aac389b973370ce41b08514a35b3fb8f42151add6017ceb8b5786341"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4382/magpie-cli-darwin-amd64"
      sha256 "79812a2c106a7471df75008e44d343ba3cc6b641e6d896b8a7dc623c8f607d7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4382/magpie-cli-linux-arm64"
      sha256 "3980573dc6870aef968850e0415da3e0c4cc6a9ec67e118c149e062026eb4604"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4382/magpie-cli-linux-amd64"
      sha256 "656d16edb56a33a8b207d6d2197707abd37962d9ab61ab5668bbb2bf1e31529b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
