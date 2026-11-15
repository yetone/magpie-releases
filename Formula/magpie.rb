class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4254/magpie-cli-darwin-arm64"
      sha256 "3d073b61d73169d6e5936a4e41a9a0e4965ae0f3c0fea58fa8fb55204e29cfa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4254/magpie-cli-darwin-amd64"
      sha256 "3b9846f800f2e2d1049e5789a70a0d2d2633ce00223b7f88635356c9cc21ccf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4254/magpie-cli-linux-arm64"
      sha256 "a2f26ef9a35468e640c3f411fb117828b92480b48ffe8a91afb27605fdcb0a7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4254/magpie-cli-linux-amd64"
      sha256 "5d6bd7e48d6dd4725ad9f999a707febbde3c1e8761675f6396226e7f56500773"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
