class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2196/magpie-cli-darwin-arm64"
      sha256 "ad3257bc0761804c1794122e6d74f698776e2ed77507673d1ae4a721c04133cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2196/magpie-cli-darwin-amd64"
      sha256 "5e420bec6e16b3ff50630d3c1cfa0fa1db7f32df94b08e03656ab8bf32b16f69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2196/magpie-cli-linux-arm64"
      sha256 "f5d4442f6c8b773dda2d750e250041810f8b01a6cd82f889eeed0a78fedf6817"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2196/magpie-cli-linux-amd64"
      sha256 "1ecd24dc63d244a0094c2d67b9ca2ad55187edb03ea37c047f150278ad31a0e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
