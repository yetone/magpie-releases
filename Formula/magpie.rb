class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2367/magpie-cli-darwin-arm64"
      sha256 "90dae5af7a2716af6546793f55945d791caacc14413ec0c5ec6f0914db109e35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2367/magpie-cli-darwin-amd64"
      sha256 "9e55798329e01cf8c69e085cdd9e9f162b81901568e4971e5b5c49ce3df23c4b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2367/magpie-cli-linux-arm64"
      sha256 "a09435c21c5b6f55f4a2bdccd40c76e3482b19adff79b411107dd481eee7b77c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2367/magpie-cli-linux-amd64"
      sha256 "5f34c8428e9e5681891a64ef9a2b4a44bd5d6c3839151637e361b86a2da42561"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
