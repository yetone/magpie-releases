class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4209/magpie-cli-darwin-arm64"
      sha256 "d1e4200d96c3dbc381ab1bff2f1d719740b2e578f0200ab3ff531c91dc0c2c3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4209/magpie-cli-darwin-amd64"
      sha256 "18dba060cc43e887b50f9b71b369df7ae979ec94489f752aab323b7d822f9a3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4209/magpie-cli-linux-arm64"
      sha256 "8e659932c7d64ab16018072615b346234acae4e9a6746b6f0e968e5009b1ef7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4209/magpie-cli-linux-amd64"
      sha256 "29e8dee550a30bf689e5355e5520d4098a8f19c8b9931081b5c831572fe68919"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
