class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2226/magpie-cli-darwin-arm64"
      sha256 "22be08c326aba0d5c89bf3cd02d0b0a27112911ac29db048e4cb454859b3b7d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2226/magpie-cli-darwin-amd64"
      sha256 "ba5e819dbf16e0a7859a4bdcb80bc86fc3e2ead08d90c444f56ec34fe14679b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2226/magpie-cli-linux-arm64"
      sha256 "5058044f3cc57dad26b222bec1cf1165c04250fae0a9a6b119a1da1603481089"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2226/magpie-cli-linux-amd64"
      sha256 "1c2e86fc3c359b70c55cc03b787e0b02a2646f7cc6bccb1970d24aa1269a3dc2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
