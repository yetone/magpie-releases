class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4119/magpie-cli-darwin-arm64"
      sha256 "cb796a65020dc9fbf1d540c313979875bcb69298cab739796256c6c1042f16cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4119/magpie-cli-darwin-amd64"
      sha256 "9099b8fab214f074f7a8d5382ff9835e4cfe40c59685853ccaae577d882c9e3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4119/magpie-cli-linux-arm64"
      sha256 "5d18a6d06957d9e1d86cf4d3b465d044eab9fbf344cf84e9e1ae4c998975d14a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4119/magpie-cli-linux-amd64"
      sha256 "c52559ce3898d9ab42f6a81e44f74d76f241be1596b3b8ae28332f29caecc3f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
