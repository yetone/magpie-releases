class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1105/magpie-cli-darwin-arm64"
      sha256 "6a5228b2dcf2c8909457e2bb74053dc757d7dfa6668934504f98f3b403001e65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1105/magpie-cli-darwin-amd64"
      sha256 "3be9d522c4db1abd6776606678b30e12205520f02454bb64d7f9b8d15a3f9083"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1105/magpie-cli-linux-arm64"
      sha256 "d4a41b09b1189a1456c77c55c0a320c30c7f7cd78cc7f5b9a4a75ac4afd239d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1105/magpie-cli-linux-amd64"
      sha256 "14e5ca28b690e79aabbd15f52366b6b889e5847e88918f52dcb15411a865afbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
