class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2511/magpie-cli-darwin-arm64"
      sha256 "f98d4da2e5b2d992047b00b744231abfd0d456fbd644a9d45803eeab8b89b6cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2511/magpie-cli-darwin-amd64"
      sha256 "51fa15e6429efb5ed0232ec7d386e9801f4b71924151847180525592c0226bb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2511/magpie-cli-linux-arm64"
      sha256 "5e00100f68224bf1fea11d79aefb83d60640b0a89c22e832267d7eee499fa1a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2511/magpie-cli-linux-amd64"
      sha256 "5e54a5c89447713b579d8a2785e25886aa45ae64207420e4f6d4d0c381abeaaa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
