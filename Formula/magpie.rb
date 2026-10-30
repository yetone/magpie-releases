class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2282/magpie-cli-darwin-arm64"
      sha256 "690425c97bb860cc8d66758120da9675c9dda02d45a96cf2e5bf6e46908131b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2282/magpie-cli-darwin-amd64"
      sha256 "092ec37f35355b0fb827e0c5c95aea486c0db7bc3ebc9c97afe5cfa7dbb91523"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2282/magpie-cli-linux-arm64"
      sha256 "c6b35a0e62232ba7cc0c7ee5d831d59ada5d0c475cf238c25cb6d933291cbbf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2282/magpie-cli-linux-amd64"
      sha256 "d12a28a7f9020433116d59781ca92c3dec3677df62469e522919b446b4543c01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
