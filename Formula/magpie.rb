class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2275/magpie-cli-darwin-arm64"
      sha256 "b86171497bc4cbce1f4f245f653c5e10b11faa2b745421c15f1c0d7afa8b9fa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2275/magpie-cli-darwin-amd64"
      sha256 "8e754a058687b05f83ef3d4676393e3722ec81c3bd888d70b8a46010b2457020"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2275/magpie-cli-linux-arm64"
      sha256 "3299d1598b6f1f7b8fb52a0debe2dab37a6d0aad464ae6a08b89ed9541dff3fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2275/magpie-cli-linux-amd64"
      sha256 "636dd90c47b7182698c952a863c2813c19e825f7565a1e5ed96b0baf5115f1da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
