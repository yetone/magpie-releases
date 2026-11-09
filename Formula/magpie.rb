class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3431/magpie-cli-darwin-arm64"
      sha256 "67c84b07de273bba7424d64ca7f10162f1a1d9b803c4f6f9476d0053a24cebe2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3431/magpie-cli-darwin-amd64"
      sha256 "b3948b40ba1e8f73d950ca52c382606941c1c5242dbe55dd89961703600efb63"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3431/magpie-cli-linux-arm64"
      sha256 "ef5a271777bd95d8099513f2a8bbfbda653bbdccaa4eabbc65e2bf972261428c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3431/magpie-cli-linux-amd64"
      sha256 "a0064dd749cb7f92c5451edc8cf0e902302326dc2b10440b2fcf11db5eba1dc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
