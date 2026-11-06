class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3150/magpie-cli-darwin-arm64"
      sha256 "6b42a9e39472fd42d9bf8fd05c4652de352e0a260754b083fd84ccad4bdfcc3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3150/magpie-cli-darwin-amd64"
      sha256 "576f63c3606b1e111d5a0fcb23d47ae1d208854783a80c910900a9f071885e2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3150/magpie-cli-linux-arm64"
      sha256 "71df581a2e0abd4e6dcbfb7649389525608d502e85cffa2b94a1de280e31fdd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3150/magpie-cli-linux-amd64"
      sha256 "76b959c4cb10ee17bbaf02b3cc43a1f3218741d4c08a6a91156c38d4c775be4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
