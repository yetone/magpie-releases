class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3864/magpie-cli-darwin-arm64"
      sha256 "c9a476060591b22bbbd37a8944974a7b7866433a6646e4019691a99d381ad4cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3864/magpie-cli-darwin-amd64"
      sha256 "a21718247194e57c6889b59643bcfebb12e25f22f96bb0c6cf1ec65bd245015f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3864/magpie-cli-linux-arm64"
      sha256 "9d52870449e6767af99aea3e493abca7829f3c34faff653ac9247ade864d76b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3864/magpie-cli-linux-amd64"
      sha256 "ae2202e8a5798979aa604709993524ab1bb80e73183856d3556e1c64726f94e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
