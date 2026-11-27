class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4926/magpie-cli-darwin-arm64"
      sha256 "a5790f39c86eef5f100b9e357c2d833f296648b11929f5a50947299ae3451bf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4926/magpie-cli-darwin-amd64"
      sha256 "a16d03898ff1b12ddd08e2844b4cf45c848b85e283ee08bb02866a93e06c0c5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4926/magpie-cli-linux-arm64"
      sha256 "a541963aeb05353cd474ceb6b00d94573449b979055e9ee51e025a46784e66a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4926/magpie-cli-linux-amd64"
      sha256 "00b6624b1e062cba0ec29d37bc27a3249b8311b2f248f9b71c8f994221341fbb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
