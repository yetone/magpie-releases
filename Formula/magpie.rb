class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4376/magpie-cli-darwin-arm64"
      sha256 "a78a6ae50ebf8d35e485fe52c6460e2e70f48692d51b0907896a025f2a70125c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4376/magpie-cli-darwin-amd64"
      sha256 "3f47bf2061f7ec64942fc98eb9a3207cfdbff2dc4da1d59b74b094b01b4aecad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4376/magpie-cli-linux-arm64"
      sha256 "fcbc6b291d22bb9466e48d90f0f5e5a61d3dbd993f67e083e2d9b36f79650cf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4376/magpie-cli-linux-amd64"
      sha256 "796c66fd5ed1e1f6fbc74f3558f22602d03762168ec62355030222973a901070"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
