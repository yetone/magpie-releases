class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3877/magpie-cli-darwin-arm64"
      sha256 "3b0cc292fe6135ddf842e4cbadddf9d912dfc293a8c0c0fa4785111668e53e2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3877/magpie-cli-darwin-amd64"
      sha256 "48cd27aaca058e859cf61cbf2e453da4dedd31181c1310e25f8e1c253124f8c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3877/magpie-cli-linux-arm64"
      sha256 "938e56dfff8135e17f6665fc7a67b045a252714ca866e16a73a9c365f8564b85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3877/magpie-cli-linux-amd64"
      sha256 "5a9eecfa4c7eb71cef8835c10135b4116443d7a37be39669dcc62f084c229f03"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
