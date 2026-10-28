class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1956/magpie-cli-darwin-arm64"
      sha256 "3e024c00614d822004e5e06a160917603d27a61bdd726e53df071f403501ad72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1956/magpie-cli-darwin-amd64"
      sha256 "479a37060d40d384c12cb240ce3df985ec9abebfcf36c5619aeadd9678a7098b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1956/magpie-cli-linux-arm64"
      sha256 "ee56686f517f223b0bcc801f2b456caf6422dcbc3870e263a0f190b97f75720c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1956/magpie-cli-linux-amd64"
      sha256 "f471c6a3cc710abdc9fbe736fdf2428e6d5e187323b9208f6cb6286bafd8ea9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
