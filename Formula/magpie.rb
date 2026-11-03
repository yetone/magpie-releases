class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2885/magpie-cli-darwin-arm64"
      sha256 "725d7de06c268fb16d95a7847b674a54f74703a2932a648a0e00f28a366e2856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2885/magpie-cli-darwin-amd64"
      sha256 "02fa2c980d5710b46ec1bd4243e3d5dbfa89a556e31c3e0c5ab0d89548ee165c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2885/magpie-cli-linux-arm64"
      sha256 "cbf05f1959bd1de58cc47bd5db574efa94551efcd2c3805a656ec29ca8844d55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2885/magpie-cli-linux-amd64"
      sha256 "5ea097f4b4ba149840fb62e76409ae82fbc27bf76dcf405c7d20b3e53a616a6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
