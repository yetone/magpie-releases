class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4320/magpie-cli-darwin-arm64"
      sha256 "cc79fc986a35f60afc2bf79296989ae02c1626baede73fa0c8a49b5b6ff8b6bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4320/magpie-cli-darwin-amd64"
      sha256 "b45ca5843cb7d9a19ef84d36d93a911b7ad60f7545a5876b647ce166d4bc370a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4320/magpie-cli-linux-arm64"
      sha256 "cb1df1f94184c7ffb51681c8405ff597513bb09b517d3c940b7f1da11d056864"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4320/magpie-cli-linux-amd64"
      sha256 "fda3647875d3a07bc62c29448cac004d5e5c443a9a444c78b116ad938d904545"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
