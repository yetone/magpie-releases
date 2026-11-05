class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3072/magpie-cli-darwin-arm64"
      sha256 "f0caf3dfd39b79c6f7bd339e0685ebee94a5d3f0b0de6ac7b812eef126cb6223"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3072/magpie-cli-darwin-amd64"
      sha256 "b3e2817c32d80b4fef40b50c215c8e18ef248e14cc2e1a8554b3bc32eff9d21d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3072/magpie-cli-linux-arm64"
      sha256 "593fdef90a9120eeb83746bad5ebdee1653dd9a8c19247476201f8ac62ad707a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3072/magpie-cli-linux-amd64"
      sha256 "f42d5f4187c92e0445b7dd1024c937820151809f3a090a39952f461a96adfdb4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
