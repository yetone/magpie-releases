class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3036/magpie-cli-darwin-arm64"
      sha256 "7ea94ffe8fcfe01d88b6216957defd5a1c32b3ff717a72b0fa71d95b058dc3bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3036/magpie-cli-darwin-amd64"
      sha256 "8a67c84c8dc1f977db4c91e95a4616d8c0fae87da90c4a6c5537d8fd2f14ca6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3036/magpie-cli-linux-arm64"
      sha256 "fa0d6a90b1058e81b8741642ea2a6b2fe45de5e16f7c9c4b80739fe73db4d10c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3036/magpie-cli-linux-amd64"
      sha256 "06f42ee94b63911a5bcaff1cd02a135528295a07fd45d14dd9a686201152b783"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
