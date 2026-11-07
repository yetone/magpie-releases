class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3237/magpie-cli-darwin-arm64"
      sha256 "4962bf51f6f5da911e8647d720a67714b4325bacd705aec4bfaa0e75ba61e383"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3237/magpie-cli-darwin-amd64"
      sha256 "5cb0cb3359ee30006273dd6de3d4f8ab5c211da6f1a1876c5769c703f8b26204"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3237/magpie-cli-linux-arm64"
      sha256 "1ed971a1ed2e74c8e016204608959d14c8452596d7e9ae195303ff9960455d3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3237/magpie-cli-linux-amd64"
      sha256 "70c336366e85410884ea3a25ff2d34605370a1826bf338f6ba4f4b9b35f3aef7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
