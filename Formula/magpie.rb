class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3838/magpie-cli-darwin-arm64"
      sha256 "14212320380cffe290adb6ad67d58279733cbf7b0f59739fa9914d1a7c369eb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3838/magpie-cli-darwin-amd64"
      sha256 "85c684417025e70baf2d99b9fc712ad19782ab360b2866a374730b59f060996e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3838/magpie-cli-linux-arm64"
      sha256 "5b1f0094494e14bec0273f74e9d63f68213037063182efe0080201c625c712fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3838/magpie-cli-linux-amd64"
      sha256 "eeaf154069b9c00e697f8626189416838fcc911746d18ec88990b1152b77291f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
