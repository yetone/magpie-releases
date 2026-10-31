class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2374/magpie-cli-darwin-arm64"
      sha256 "2763d5c5926c11bf032e0eb26cd996c84ceeb6faee0bd59bb7e0f2dc5cb76522"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2374/magpie-cli-darwin-amd64"
      sha256 "2ddbbb3b474257173e8f9e9d83f8a59bd547edfe3f2446f5bf2d189abf1aea7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2374/magpie-cli-linux-arm64"
      sha256 "17894e6cbd4505862cc790189e73fff6aa04ea94c71c3dab1366f74a286b4f05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2374/magpie-cli-linux-amd64"
      sha256 "cdce397f554244fdf90eeacf56828918a0b338b6df6df41c0a1a477e946d147d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
