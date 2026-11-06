class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3179/magpie-cli-darwin-arm64"
      sha256 "c1deba567bd2aeeb006e52b69d3cde8f9130df662307a31b193e236cedef972c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3179/magpie-cli-darwin-amd64"
      sha256 "0a5222293c43704490a1fc805f2ef54138baa7d9e6c4feff74758566e84b3c30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3179/magpie-cli-linux-arm64"
      sha256 "234555a724a11b0b4570a1a459468af2078ebaf00dca969162bd59d28cb986e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3179/magpie-cli-linux-amd64"
      sha256 "a0ea4698ddc8a54a85016482732faafe9d4ef2b2c15fbf03b31513c91031ef9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
