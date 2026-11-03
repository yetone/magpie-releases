class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2821/magpie-cli-darwin-arm64"
      sha256 "fb0f676a69d2aec7db478e9b1ff6743bfaea186125805b3f49086f6032e17781"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2821/magpie-cli-darwin-amd64"
      sha256 "691cf169ba2ff2c8d5ea11261c9b2baaaa19bf77402c411480eb2649c870e943"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2821/magpie-cli-linux-arm64"
      sha256 "7ae1f193d7c8d0ca93d39726e03842913a7d0a84e73a79aba8d09b27cb2c95f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2821/magpie-cli-linux-amd64"
      sha256 "b99284765f48141ff307acfe028105508062ed53a6229fcf79ebf8f709efba0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
