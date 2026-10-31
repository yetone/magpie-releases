class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2490/magpie-cli-darwin-arm64"
      sha256 "3e041bf9905ebc3d07daa1043efe05b4adc7d41c0b674b748af8bd7e5dffd267"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2490/magpie-cli-darwin-amd64"
      sha256 "e1d3e8941b464161fafc94e4f991fb1de15693f0305c49b840c41ba63076c1ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2490/magpie-cli-linux-arm64"
      sha256 "def5b034b5c3f3f6153284a8c2807a87082d25d3d7b046fd01102cdbaa1fdb72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2490/magpie-cli-linux-amd64"
      sha256 "054845ad6bf1f63f8e95a61f0d61ff75416f7c59f29d3ca1f33d2b84275786fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
