class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1149/magpie-cli-darwin-arm64"
      sha256 "1b45c3463037621032991e237794cd95db879231f19d26bb0a30e51c73374418"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1149/magpie-cli-darwin-amd64"
      sha256 "21d2d0d9140261997690a98c9dd9dfaa25ec57166352839ebc8ffa3ddd7ce048"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1149/magpie-cli-linux-arm64"
      sha256 "775ad4c99ef7a2d4d10a49f1b6b926805eb0f8aebff0bde6518387d3eb5546b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1149/magpie-cli-linux-amd64"
      sha256 "0e838150367e2a2cdddd9a4e39cd0707a64f8fe18a1f6a28710fd7bdaf8fb6b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
