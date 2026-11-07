class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3243/magpie-cli-darwin-arm64"
      sha256 "7b6dbf217e52defaf719f5682ca441e5289082276b86499431bb0b06e8ab7966"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3243/magpie-cli-darwin-amd64"
      sha256 "7fea3e513f92f8bcaf9c0b91346c8221f4314a1ac9b42fb28ba40dae1f17c760"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3243/magpie-cli-linux-arm64"
      sha256 "1e1824ffe218877c1aa4cf9fa3e1609e9e578ca82dc5ac1de06a0a5a0a4c1bcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3243/magpie-cli-linux-amd64"
      sha256 "d05a5b76b344be45a64d3a7553c86b79d27ca9db64f0216b6622e87729731175"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
