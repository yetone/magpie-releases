class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3801/magpie-cli-darwin-arm64"
      sha256 "2433650e1c2ffc66486e8079218fc61ef33bf6c1f3e9f77ea496913835860b61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3801/magpie-cli-darwin-amd64"
      sha256 "81a730266a4c4c5c2ebe81051675d52a80b45a4e0dd939a7ea8eccb5de6046b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3801/magpie-cli-linux-arm64"
      sha256 "450c63dcc82595580f7870d58498be0e9b68a0e1468493be57a155b033910050"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3801/magpie-cli-linux-amd64"
      sha256 "e57f5140f1d653bc5ae2f1b7a98742bd5a405c7bf2f2a800ce0344c7ae210d9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
