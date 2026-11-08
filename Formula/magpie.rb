class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3339/magpie-cli-darwin-arm64"
      sha256 "252ad887f1ac5c7265f4440f0f72fdd9aed44153423a64ff716c0b057e91e58a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3339/magpie-cli-darwin-amd64"
      sha256 "564f63fcb991f3698597d51b12ea53615b988d4039ea983c2f4cc509e8257c1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3339/magpie-cli-linux-arm64"
      sha256 "1853f8eeb629742b09ec73f53163189768c6e78b709cead185ef90ef1c1cd3e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3339/magpie-cli-linux-amd64"
      sha256 "2194aa5e73f66c30450b3e7f876791ec2f4274977ff82966db56361cdc61e264"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
