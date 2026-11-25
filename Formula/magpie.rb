class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4798/magpie-cli-darwin-arm64"
      sha256 "755a3a8ec9d63e888c1b5bc14016becb2767c81f42612e73060cd641ff2c819d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4798/magpie-cli-darwin-amd64"
      sha256 "7f1e0c56a4ac00cc62b95696dc178ad9c4a354c623933fa1a1b37686c9e76187"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4798/magpie-cli-linux-arm64"
      sha256 "ea0b9f8260e2b261af60f2e8edb4a10e025879c14d94b34831f3d00f6a95f810"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4798/magpie-cli-linux-amd64"
      sha256 "6c8379337ead9baf136431709b6c162e8db768348ac7969a86700c1f1cd71076"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
