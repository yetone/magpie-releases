class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4565/magpie-cli-darwin-arm64"
      sha256 "af93186d0cc926f64aa8cdfdfec3577070c4bfc7bf66aa125cc691976d187f7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4565/magpie-cli-darwin-amd64"
      sha256 "1e9d8166d5e573930f1ccf3b0e2b688df46fcd0f0b564c881fe395cbe09b33f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4565/magpie-cli-linux-arm64"
      sha256 "865c6788e910cabeb3f2d1492f41e46eb1c62367e8e54e5ea0b31dbe29c8f49d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4565/magpie-cli-linux-amd64"
      sha256 "3f4900ccb12c7b2c16cd95d0a3a40723404f09ec08696fe1d53679e3ea6f45df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
