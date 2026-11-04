class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2916/magpie-cli-darwin-arm64"
      sha256 "e40f638adff59d8c0c9af2d51e32d99088f3add8c5b7575ba0b46bb266479a91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2916/magpie-cli-darwin-amd64"
      sha256 "1fabf2edb3de49d9403be6bd036eb91925f62967ee2e28834b19253c586dbe21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2916/magpie-cli-linux-arm64"
      sha256 "d7f258ee8ec9ad9bc9fa9f4878004fec89753afffd74637894458a2fc2722615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2916/magpie-cli-linux-amd64"
      sha256 "53eb6fba04f23f9b35226559fa9e056be88d6246bc6caf207045fd55106f4e82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
