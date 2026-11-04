class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2947/magpie-cli-darwin-arm64"
      sha256 "721b6111e82ca6be2d16c8958e7595d91a00478e6e9ebe5f6c28ed68ef52893a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2947/magpie-cli-darwin-amd64"
      sha256 "d3e65abd153180a468a27994b87253de0509d0ccb5edba257b38ef30ef87102c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2947/magpie-cli-linux-arm64"
      sha256 "f33f96ee21b9ffb14a52addd239a597b6defdf9b9cdbff4cde8d79fb4c2b18e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2947/magpie-cli-linux-amd64"
      sha256 "5aca7713874a30b7c1d173ca51c168b98a496149e04135b7bf8c62f561311a0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
