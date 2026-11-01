class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2510/magpie-cli-darwin-arm64"
      sha256 "a7b70613d06676cefd723ca3c553ac799ed1866a536b2207777dd981b0a23233"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2510/magpie-cli-darwin-amd64"
      sha256 "c7af014462ed244dad9bda085c72e930388cecc7bdc4ea54473afc4b440e66c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2510/magpie-cli-linux-arm64"
      sha256 "96e16f91e84b97929f7ded3ace178f2b76ebcd81340e6a9a20af05505cdae131"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2510/magpie-cli-linux-amd64"
      sha256 "752f5d3cd87c93eb3fc9148aa297fc7b0474047f908bf7334aaefa67cda660f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
