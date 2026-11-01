class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2656/magpie-cli-darwin-arm64"
      sha256 "29e7eb8f1dd4874d44b1ec85349cbfe549b643c5777c63d9aaf58962aefa9c49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2656/magpie-cli-darwin-amd64"
      sha256 "dc5115d3894dc0f5ad74d0bc0f585238cd01966d2a739ae1e84992518928b5d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2656/magpie-cli-linux-arm64"
      sha256 "afc9f4f88e6d9a973aa55f0267fb4d495e4af6fe12d848b563cec6bd8ed21876"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2656/magpie-cli-linux-amd64"
      sha256 "aba69a85ff75499d7ad9332aadf421bd8ecabe571da5e61e5966f67b7c74804c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
