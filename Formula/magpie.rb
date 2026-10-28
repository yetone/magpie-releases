class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1862/magpie-cli-darwin-arm64"
      sha256 "04f442761f53aeaa952a2213b036c649fbf984701d8bf6de6505d092afd22a04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1862/magpie-cli-darwin-amd64"
      sha256 "8589ebf665def72b84432964da626ab4015a70e074b9b326ee6104b37a4f9543"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1862/magpie-cli-linux-arm64"
      sha256 "0e5f2f1ebb4b9f2b87bd798dc34e01eb4d5dff3bd524db3b91790eab4feeee61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1862/magpie-cli-linux-amd64"
      sha256 "d0cda12de3bf31f04fb6b2a175fd2beed3385925275c7bbc68404270059167a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
