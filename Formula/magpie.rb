class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4858/magpie-cli-darwin-arm64"
      sha256 "915bb1e720945a361774644d9b58ae600b8513987c43e57232b9ce37cc5209c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4858/magpie-cli-darwin-amd64"
      sha256 "4461dcc0fd2b1feef1a6ff8243ccb756cad9ffc8364cc573b3bec7ed18db9c5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4858/magpie-cli-linux-arm64"
      sha256 "f45d564c901cbfe75fc02b0b79c34e9950262f4c4a8182e7218b56e9d28c6d11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4858/magpie-cli-linux-amd64"
      sha256 "9651c2888335beb0d42cbeaa0cbac39cad87340e51d88012b9c99f4cdda26b2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
