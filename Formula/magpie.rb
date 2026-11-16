class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4281/magpie-cli-darwin-arm64"
      sha256 "84c9419a9fc24788f2d23ad6dbc92d15db4c340f92b8cd0d3c9bb417d7a3187c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4281/magpie-cli-darwin-amd64"
      sha256 "e5a7d1228425249599c8aa6aec9e070b07c211c4a6512970d6f0909d86c8bc39"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4281/magpie-cli-linux-arm64"
      sha256 "fb545eeacc24e2d25b1ef4749af65cb2572f3171e38144b936d6e2b5b963a18f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4281/magpie-cli-linux-amd64"
      sha256 "090a138e70471259287111de71c245422bbcbf7635c52ead49dc1e6e5d57d1dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
