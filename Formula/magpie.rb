class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3337/magpie-cli-darwin-arm64"
      sha256 "c2dc903f8d76d2b2c6eec9666c6dfc6e231e636a70522fe75bb38b7ffc98018e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3337/magpie-cli-darwin-amd64"
      sha256 "c7972c8faf1e607b0e674be076aa8ca3e7c115c73d67284fd727d7293c53aa86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3337/magpie-cli-linux-arm64"
      sha256 "817d34b7e6035a1450019a60adc01665499657666b3ce2e11dfca2d79c0b2b6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3337/magpie-cli-linux-amd64"
      sha256 "aa438ea1f7176d9d933144cf71262490bd1ba66b1928ce4cc78b8c07e3a2267d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
