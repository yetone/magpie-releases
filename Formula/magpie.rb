class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1082/magpie-cli-darwin-arm64"
      sha256 "51d2654b89f33518c22a8b16ba5f2bc2d45806c19e0c58310920340c79b34da7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1082/magpie-cli-darwin-amd64"
      sha256 "eefbc3e3b65beac8ab296b9ad7532d0f425f95d62932c42fff6a81a4e2dfb6b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1082/magpie-cli-linux-arm64"
      sha256 "32e59c43f8b2cf467f585b317bb11ec7d020345315134f0b934b31b1d7a1a268"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1082/magpie-cli-linux-amd64"
      sha256 "baccdd964ead37da7227dae7363c17cd3966cf531a435ef05b834497edf71af4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
