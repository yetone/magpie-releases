class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2231/magpie-cli-darwin-arm64"
      sha256 "518f6d095de62b979229085bc47e92bbccab8fd8c29ac2a9691dbda1e14b9d4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2231/magpie-cli-darwin-amd64"
      sha256 "1cbc5f1c65837dd903e18e5f96c6850b30f643edeb2c60d19c97cb22565122de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2231/magpie-cli-linux-arm64"
      sha256 "d7cae83cdd5d4a590b311a2e7e706364413621daecc23bda67cf3bb8862d52d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2231/magpie-cli-linux-amd64"
      sha256 "babdedeb5c27502ae06e69a15d87496630b376f58f8a7b72fbdf4b3f2895f39b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
