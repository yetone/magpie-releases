class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2254/magpie-cli-darwin-arm64"
      sha256 "334a3cc3c4a77129c2a6ab29cf0384d4e73f45737458beaa5789f74498907d8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2254/magpie-cli-darwin-amd64"
      sha256 "019866771726d26ee8b5151c2463d24ef9a86fdcf900b3356b9967fda5c35054"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2254/magpie-cli-linux-arm64"
      sha256 "c0940b39f9062d7d199f55495c8ccc94a6ee1a4900827bb9c48921e24936f9bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2254/magpie-cli-linux-amd64"
      sha256 "49d232a4d17dec0dbd4c53112df2f919328da11d42dfaeb3b109822691d41127"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
