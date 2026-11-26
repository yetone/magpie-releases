class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4830/magpie-cli-darwin-arm64"
      sha256 "8a2153512d131596041d57e55410c93875aed987d83d6cc16572b41362deb63a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4830/magpie-cli-darwin-amd64"
      sha256 "c418112b60aa9325246d13add72be95d6f8c6d27d91acf1b043c030315ac0c75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4830/magpie-cli-linux-arm64"
      sha256 "872ae572676487e82b4a7b7ba4fe6d292eb5a105481123d1a612251214ddea6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4830/magpie-cli-linux-amd64"
      sha256 "ed785d0874a058e2192e4faa9f5194dcc233ca8beef2f6985f2b89d5cdbe9500"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
