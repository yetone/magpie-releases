class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.961/magpie-cli-darwin-arm64"
      sha256 "e6a9d2d3cf17d9e7f5e3cffb3446aaa8491c562762b7f6b1cf32e05b8c911a21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.961/magpie-cli-darwin-amd64"
      sha256 "efcef9eeefd333ee657f906a7374435ecff6ff1d104826c4e8b5d9495c7a34ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.961/magpie-cli-linux-arm64"
      sha256 "68ce3aaae2a77f5d3b5df25c6af002de1b3743baa79f415ab737e7da6f8063e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.961/magpie-cli-linux-amd64"
      sha256 "8f815bfcbad6142825ba89e7c7a38666c8e00be6ab1a88d86bdba70cedf00a55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
