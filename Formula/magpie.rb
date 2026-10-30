class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2144/magpie-cli-darwin-arm64"
      sha256 "009f9b881755794d9f774658c802417a9ee035e03104415d5f2e3356dddedd4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2144/magpie-cli-darwin-amd64"
      sha256 "680e74edca05e585cc88e2ea546adc771406cb96cb4d58dcf0d91ed330ca79fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2144/magpie-cli-linux-arm64"
      sha256 "0df2629225918d3a25746c80a604ad9d585a3738bc3be83abf49e3e17e54eca9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2144/magpie-cli-linux-amd64"
      sha256 "7a9efcff307627ad1a185af85c5d2873911508b927f6e15069a8d646fb128c79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
