class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1136/magpie-cli-darwin-arm64"
      sha256 "eac24a18e47a2e5167c019a54d5985b7c01f675b5350e5faacbd54d038bf8655"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1136/magpie-cli-darwin-amd64"
      sha256 "dcd5c2453768af8675398968734a29d103110beb4d48052668e64606f6be7a35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1136/magpie-cli-linux-arm64"
      sha256 "10575bb599b6b2d81203b3ed4eca0010217908a562437498ef46d391143cf2ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1136/magpie-cli-linux-amd64"
      sha256 "0b67a7436269cf02b40d71ea4d6d3d17ce96e29b97a834002bf91b6ad41a179f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
