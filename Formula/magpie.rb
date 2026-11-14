class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4127/magpie-cli-darwin-arm64"
      sha256 "a3194aced4095fbc8e7b10c25397eca8c8a5b2d73392d97e5328bcef9841856b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4127/magpie-cli-darwin-amd64"
      sha256 "8a5fdc969d58856c25f6004e394dc0f91162e327b137097638627629acb7ef87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4127/magpie-cli-linux-arm64"
      sha256 "dd31c37de99652342dfa9e097ad6d19224770f5ce16bd9626d3d935ba2e0f99b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4127/magpie-cli-linux-amd64"
      sha256 "4d722f6d663daa0cc9b9951f6a463b196e8ba34560bcdcf0435c99d443b1c1ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
