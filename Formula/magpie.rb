class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2601/magpie-cli-darwin-arm64"
      sha256 "ee27b1add3459df94e24f2d318311fdf86463a2c9905b677f8ef40ebbe8b47eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2601/magpie-cli-darwin-amd64"
      sha256 "17e7a40ae03fad0a8163e2127b3ec365be58691e2eb118e88c630548c3c89862"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2601/magpie-cli-linux-arm64"
      sha256 "090c89aa4a00241a54daf708e4a7fe3163a1f0b6e84e815b7524f56d07a85aae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2601/magpie-cli-linux-amd64"
      sha256 "70bed14b09c5e7fb9336084bcb01c98d0b8e9f5cf82c51594bbc1b166b289397"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
