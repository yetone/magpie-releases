class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1916/magpie-cli-darwin-arm64"
      sha256 "acacc362d86ac7c9448e8ecb485b97ed2e5a71dc6c6373030ad953c071713075"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1916/magpie-cli-darwin-amd64"
      sha256 "7f8bfa19d576407f91f0dfc25cea2bc8afa79952732142ad250c4edf733341e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1916/magpie-cli-linux-arm64"
      sha256 "65a4d15d2514857f0851157d96b56ea37c532078ad9d2fa9b80dc1a29004c58f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1916/magpie-cli-linux-amd64"
      sha256 "c3ad9dabafba43328cdabb4911e7fe89d6bdd2ae87bc679c850cd8cd85021432"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
