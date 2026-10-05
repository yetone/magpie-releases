class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.935/magpie-cli-darwin-arm64"
      sha256 "053cb2f46666ba142d4f469255ecf83cadf96bc3d3b4ca0a6b61b8471c765505"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.935/magpie-cli-darwin-amd64"
      sha256 "ba374577b93d498342c58f57b93d91bc522615f6d46b9df8edf05ba44fbff372"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.935/magpie-cli-linux-arm64"
      sha256 "7269724851ebe3aed5de52a11ee16bd67d41d8b6f613c59679d9addc5dfd33db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.935/magpie-cli-linux-amd64"
      sha256 "a071057bdc63d7d580c3ec40d7d1c1764bb4be5b75b39222e3ebe117f95e8e0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
