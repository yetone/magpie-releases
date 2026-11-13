class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3970/magpie-cli-darwin-arm64"
      sha256 "8eb58aa2863d59e35cae998427960f3dfb7e2b50486285450c6e4aa9f6f705ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3970/magpie-cli-darwin-amd64"
      sha256 "c784a400223c9155b600b26fd80e1baf828865c949c1a9097b00b815fa775782"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3970/magpie-cli-linux-arm64"
      sha256 "808b66889c987ca3b7b2bacf5f4f692c32bf7319cf5102c72d194bb5e92e46e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3970/magpie-cli-linux-amd64"
      sha256 "b189b190ce097a29b4d05845dde0c9cf490e3f7357147f8ec9ee4b5399ed75da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
