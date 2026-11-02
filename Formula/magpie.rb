class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2694/magpie-cli-darwin-arm64"
      sha256 "f944282bd96d4313ece12c92e481b84dd077729630588d83d55bdcd0d681f55f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2694/magpie-cli-darwin-amd64"
      sha256 "b6a65049319e4d9e6120f01cdfb98c49f5988724c5958fbbb90264588a981825"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2694/magpie-cli-linux-arm64"
      sha256 "b1c96d1dea1bf741484afe7ecc94778dde770122df773790f74a965b13d83b0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2694/magpie-cli-linux-amd64"
      sha256 "6694c0130228d9842a497adcc3926132c66e023af0c13b47f868a0685c72605c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
