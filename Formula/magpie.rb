class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4333/magpie-cli-darwin-arm64"
      sha256 "2306661863d2ddbe0658d1f0861af605fb9eda8c5e0cc91f7fd4cc1a34cd3322"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4333/magpie-cli-darwin-amd64"
      sha256 "4309932a6c7ac4fa7c6627aa6462fa8b9066cee245fe2646ad3736fb70d127f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4333/magpie-cli-linux-arm64"
      sha256 "c404719f3e53f29b6e63006158cdd08e8524974556cdd86be35001bbeeb27216"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4333/magpie-cli-linux-amd64"
      sha256 "5035caa42b198128b3f55a5924ca49581d007df1ba9dbd23036da07cd71a62f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
