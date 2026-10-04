class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.896/magpie-cli-darwin-arm64"
      sha256 "51a58c30c065900055dca48bcdb410dcda4a5eff144114ae7a9cf22933d94128"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.896/magpie-cli-darwin-amd64"
      sha256 "a57910c86e7d5e90e4167e3fb0a0dcaa9b92b97c88629d3f6b852d309a3ef3bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.896/magpie-cli-linux-arm64"
      sha256 "a1d0815935d4a0306cc2c3fab3aacd2e53b741307b05738235c5d987bd74e16f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.896/magpie-cli-linux-amd64"
      sha256 "ab7b4e38673e43b5e0a0967dd5f4994219e1a9e5dd312dd28ebeb56e95a09db2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
