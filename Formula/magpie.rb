class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2626/magpie-cli-darwin-arm64"
      sha256 "0c34a0fc4d6e557e7f8eb4f78d01b7466f58549949d18cd4be19f33a766ffd79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2626/magpie-cli-darwin-amd64"
      sha256 "ca44adad2c284c0912850d50ad9dcf1f4379d096cac01834253f39f55b0d9994"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2626/magpie-cli-linux-arm64"
      sha256 "0918170380620d90991cbbf587839a34694e9386cfcd2b72794d5d0cdad74360"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2626/magpie-cli-linux-amd64"
      sha256 "c69b65cc476045718ab02a165f72245f6ec325222b3d560e6125225a714c4fa0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
