class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4273/magpie-cli-darwin-arm64"
      sha256 "6c022747a0e8a6a1a13be4d73a9babe0cf66d9ede42966c071f508243711cc40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4273/magpie-cli-darwin-amd64"
      sha256 "dad87e6168e46c2991b6a3ce98cb4f42856e27f6e2e341b25d5e1963db8df30a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4273/magpie-cli-linux-arm64"
      sha256 "34d56c631a3b8f1c163525a0bb6dbc06aac719c0ca9d45efeb5d8471103ba46a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4273/magpie-cli-linux-amd64"
      sha256 "f8000b626a4aee13e37f6fa6e8226c98ec872d25ecbc4f748d49f73ec216e0ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
