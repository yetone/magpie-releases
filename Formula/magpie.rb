class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2451/magpie-cli-darwin-arm64"
      sha256 "2ab33175dcc142a328d4a2c6f068e840090656b8322a9cc2781f498a0b77e8e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2451/magpie-cli-darwin-amd64"
      sha256 "a55e76621b1393068f16479aaacdfcd2ad44a65c52d8aeb6ef76f81ffa07c77a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2451/magpie-cli-linux-arm64"
      sha256 "e2bc2339e99742ecb2a04896b502d8bb83c500f76de34a56413e2846b8075c15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2451/magpie-cli-linux-amd64"
      sha256 "5c18912b68604d9d4f6cb15dff411e3e9bbfd12f386be2cf70ea6de94e83a305"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
