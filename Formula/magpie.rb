class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4696/magpie-cli-darwin-arm64"
      sha256 "00980b7bcf4ba41037708079767e2b579db15ab40c91ae7f91a55f2aa360aa38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4696/magpie-cli-darwin-amd64"
      sha256 "3593c007eb539307bc66c5f9dc904e22f999deba07ef8260f17c930231b7a117"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4696/magpie-cli-linux-arm64"
      sha256 "fd08a4c981e574b2d2a0cdf9806a2ff00e31228a9442b8c1ab865975478dfda2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4696/magpie-cli-linux-amd64"
      sha256 "ff3ceb81e6fe95b6efc0812c0063f59eb6ff5aae9471610e902cae9b353f84b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
