class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5014/magpie-cli-darwin-arm64"
      sha256 "7ab74e176b79fcfe6b881abb7d432bc4b0cfbb401bc591c833ef343a7b6ab170"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5014/magpie-cli-darwin-amd64"
      sha256 "cffe1892bd9c77ed78e522cdf6b1c99d3f0b88943f63433a451c6086122b593d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5014/magpie-cli-linux-arm64"
      sha256 "eb35844a6b5c6ca9e2a66bb8bdf19638acab2ee15c70b795f1fb7f67398a97b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5014/magpie-cli-linux-amd64"
      sha256 "6814e5c10ec21125082d419a993e73a80f86985fa8d8a2d984d184777fb8dbee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
