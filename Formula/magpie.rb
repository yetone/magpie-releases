class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2969/magpie-cli-darwin-arm64"
      sha256 "9665742147d557dec3f3d2443480d870afe124198162831790d5336abf853eb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2969/magpie-cli-darwin-amd64"
      sha256 "40423ef72dabad500b7e2a6a00d34b06146fee3dcdb3bba2cc5332f2f058cb79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2969/magpie-cli-linux-arm64"
      sha256 "6af100fb7c681d1edceadd415d803afc871346aad6342bbb54c5c28c3693ee49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2969/magpie-cli-linux-amd64"
      sha256 "75ec4d226888920c409c8bfe8f96f77c98dcb79f1c0bb2c786e0234c422d4df2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
