class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2799/magpie-cli-darwin-arm64"
      sha256 "6df09112296dabe806b62f98b86329b586b6b9ac89fbf1f4be8f30a6efea0638"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2799/magpie-cli-darwin-amd64"
      sha256 "596a67c08d2b6430a103ebaf55d208ddf8f9533b27f8c1cd645b386cc78e8e19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2799/magpie-cli-linux-arm64"
      sha256 "1e98f6d5847f34e5b7feec23ad25d01f156921c3240c5f82e3397c68bb733da4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2799/magpie-cli-linux-amd64"
      sha256 "a19e24ca02728b3cb5c163c6a5651ae34743b23bdfa35ec6ccc8bec9bc2cd971"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
