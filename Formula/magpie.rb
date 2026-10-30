class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2117/magpie-cli-darwin-arm64"
      sha256 "bff14ecbc6adac517efd6a288e264ac0f84f9ab05842251e2e255a349c7c292e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2117/magpie-cli-darwin-amd64"
      sha256 "bcbb1bbfbf04e996e9e01f0ece35ee09b9b0c123c455eaf9288ec89662773b90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2117/magpie-cli-linux-arm64"
      sha256 "6db2be1c73f614831c6caf4650b9d1600de330da5b33d39ef5cf771b657eb9ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2117/magpie-cli-linux-amd64"
      sha256 "3b699e1ab78b97b6cec0efa87ea3c082f0447f6e39feb1ccb1a3a5a781fe49c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
