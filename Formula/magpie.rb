class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3885/magpie-cli-darwin-arm64"
      sha256 "b825436c465b58ee5677e023f17fea8b13c59bc104945bbba9cec5a549a366f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3885/magpie-cli-darwin-amd64"
      sha256 "d692199b88b694b26fd2e7b2acd39d257cd0d945adf171a56e666b7c1b6dbb51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3885/magpie-cli-linux-arm64"
      sha256 "886329ffdc5ac74dee3c061909e406a2437ae1ef415ba348bb78108b3cc1c1bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3885/magpie-cli-linux-amd64"
      sha256 "6a1c9632668e303e7a0f1a362ef8846e6df5e0c5197b9505fa2a97c045d18572"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
