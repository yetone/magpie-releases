class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4913/magpie-cli-darwin-arm64"
      sha256 "c42594aff00700c7fbb6bca0a9d402ca012be2fd8b03dcd5df99354cd1216ded"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4913/magpie-cli-darwin-amd64"
      sha256 "5dbc395dd057396736a97f3a94fcc874e6e24fa7ca2acc7a5857ba5030efd0ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4913/magpie-cli-linux-arm64"
      sha256 "527de48021fd5a85d2751566b412d78ffd93dd392c21349d013b4496a7b044d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4913/magpie-cli-linux-amd64"
      sha256 "697d28debd0323ecfbfcfa8655afc74b933045c69fe456f825df90cfef28c91f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
