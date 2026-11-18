class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4466/magpie-cli-darwin-arm64"
      sha256 "018f5ee64a56b4bb5bc704d08f3871f98dd030cd0234410173a31cbebf0ae845"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4466/magpie-cli-darwin-amd64"
      sha256 "de4a3b5ba4e47365637b70078bcb0000e627bd669b41772bde1b7d0eb8a4e090"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4466/magpie-cli-linux-arm64"
      sha256 "c50e0ee5f3597cfbd1a0d9bd1821ab86597d66cce1c88067326735de805955e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4466/magpie-cli-linux-amd64"
      sha256 "5ff3d2294492a729b21efc0c84d0cd5da13551cd7accde38585ce67ca12aa5af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
