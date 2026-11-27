class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4935/magpie-cli-darwin-arm64"
      sha256 "dfa639b55a221219cfac7507c00544d4586694e2726491e5052cb6e3038eeffe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4935/magpie-cli-darwin-amd64"
      sha256 "c153c86f6a1a233ce3177415c1abf53986bf87b63e00cdf246d9de77e5e580a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4935/magpie-cli-linux-arm64"
      sha256 "ad617f76aea45f4cbfe5e068f5ebfb0c4e9de49b96dd6cf7c5193362eb8d15c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4935/magpie-cli-linux-amd64"
      sha256 "bcdc4355889bbd19786a22bd54a353fbe7bf009b25a347837c3685440a79aa4b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
