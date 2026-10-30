class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2236/magpie-cli-darwin-arm64"
      sha256 "eb22a64721d83fefae21da93cdf82a2bcd2e040712c11e2ff1156c3502d8126a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2236/magpie-cli-darwin-amd64"
      sha256 "5356240efec233bf14dc2d658e98a5839fa7e1b77d1b045a9d65899a5df209fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2236/magpie-cli-linux-arm64"
      sha256 "f67e33091cb960b3165844142765fa0764f3eeea8e725e7b7aaee99d47062952"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2236/magpie-cli-linux-amd64"
      sha256 "1acc1aa06cbf4af2e88bcb4c7c1af798dabc3f296530f6f4d4d2d16fc10711f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
