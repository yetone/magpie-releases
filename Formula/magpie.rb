class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2615/magpie-cli-darwin-arm64"
      sha256 "02ba59604d2bbe87a94e1e6023960eaf41a76d8c4b973832923aa94adc0006c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2615/magpie-cli-darwin-amd64"
      sha256 "89503a3ea00c17e8a5ce3dac8b639dbb860bc753514fb47b87bf1bb3ffa1bb4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2615/magpie-cli-linux-arm64"
      sha256 "0efa4f5a4feae80295dccede9ad4ae86cff7792f5ec32da29c7e3c665ce4d23a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2615/magpie-cli-linux-amd64"
      sha256 "90636bfdc249d5449e8e77fdbbcc0bc7f540e23ad7ef78a164e205b57290fc00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
