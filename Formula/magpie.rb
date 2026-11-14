class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4188/magpie-cli-darwin-arm64"
      sha256 "9be85760c6c554f5433a8694dfc8b7c26fc8fdc8582e439c589eb06096751685"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4188/magpie-cli-darwin-amd64"
      sha256 "b72ebc56bf15c1a2c4803d3851170b2d3b26a8f781d87bb16ba7523ae7d7059a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4188/magpie-cli-linux-arm64"
      sha256 "0fd2769d4f29977e4f318a974e3d27d82f9f63aa3469fdce5e4898d41bb23386"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4188/magpie-cli-linux-amd64"
      sha256 "3dc529e779d7166e14a28ba43cb79eb32caeef4d9aa680d0202c5f2679a9bb74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
