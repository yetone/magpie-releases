class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4328/magpie-cli-darwin-arm64"
      sha256 "23209908acc356dfb2395780bd05eefdfe2cfbf6475095f94ce654f7b2c484ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4328/magpie-cli-darwin-amd64"
      sha256 "1a91cd086ec0207c129c46812e2b053cc3a8c250a44485da22a4fa4e7e6f03e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4328/magpie-cli-linux-arm64"
      sha256 "7c626f016353a560118cb0a73cbf2dc258197e04c7679cfee1be5c7ae38c9f08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4328/magpie-cli-linux-amd64"
      sha256 "e82a8bff845ec79188feb4cc1ebff5ed196989ed14f28144c61ead8a217df39a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
