class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4657/magpie-cli-darwin-arm64"
      sha256 "19185305feb4c7ca35002f44d854b8fa3ff4380e4bd149602f98219a4e14fb6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4657/magpie-cli-darwin-amd64"
      sha256 "7bf97b01638df9d4f5b72e533ada67f0f0bdd4d05c23e5bdb9054dc99b404da9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4657/magpie-cli-linux-arm64"
      sha256 "36f717e2f7f2d937dac7c6272c7c4cf12200c0ba4bb7905edb60747efce843ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4657/magpie-cli-linux-amd64"
      sha256 "52c8efaa2cd43e9801b19b5c3ab3abc9d4d4a4b4efcf1e85edd4c3542e4b472c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
