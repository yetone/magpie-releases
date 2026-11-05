class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3006/magpie-cli-darwin-arm64"
      sha256 "751b6c9291ffdbba836394f4bd9457de91a795bee9485fde063fe68e12d042bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3006/magpie-cli-darwin-amd64"
      sha256 "6dfceea81a915adbf0b3ca9ec18cea61cc77228be02df7e6cd4deaaef5a30f7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3006/magpie-cli-linux-arm64"
      sha256 "c433dd6fa22bcf758b04c7425d719960ae80777ad89b9ba9876cd7f20d0120f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3006/magpie-cli-linux-amd64"
      sha256 "f3998da4925f5fddccf0fce2cb65ee04faf01c42c82ecc6c84df74acf4f9c3c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
