class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3332/magpie-cli-darwin-arm64"
      sha256 "7ebab04cf7abd4aea882a7180d8f575177793bcfbb5588c08962357e532dd9f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3332/magpie-cli-darwin-amd64"
      sha256 "f7121b8c6d0985b37ade9c72e23f1ee344090abe43bcbd082cfd1936d0afe481"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3332/magpie-cli-linux-arm64"
      sha256 "e61ac6fbc0994b57e38c6feb309de991796d57062d36e25272a974060e0641d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3332/magpie-cli-linux-amd64"
      sha256 "a7ab5083475d5b5796e3bffad960984d2bbd68ffb19e4c3d78b64149699ceb23"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
