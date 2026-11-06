class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3160/magpie-cli-darwin-arm64"
      sha256 "37a41b3751d8bd3d1d57dfb5d8d248a10d157805c4a5edbaf56a5f15361b5465"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3160/magpie-cli-darwin-amd64"
      sha256 "ece6cdfcdd488d07d05de5fcd0ef4d7fd4dd4e919e2a9dd8abba05e77c86e0ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3160/magpie-cli-linux-arm64"
      sha256 "70f4686c1771e8537e883926f07022c97337e2b0edab1d2b80bdb032ab21c479"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3160/magpie-cli-linux-amd64"
      sha256 "46e0497cb3d8afe8d0537342d559f31e643317e1135f48e0e21eefd6613b547c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
