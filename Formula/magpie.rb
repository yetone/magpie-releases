class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2211/magpie-cli-darwin-arm64"
      sha256 "f95ec0bb3fb73f3501a97bc3c2d42648bcc66368eef05b41528b4b44098c041d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2211/magpie-cli-darwin-amd64"
      sha256 "aaaf3f19d1e73330e007cb2cf72c3d610c65c7e65040dba9b1f0a32579874ecb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2211/magpie-cli-linux-arm64"
      sha256 "acf15304d4c2ec7f763296a66bd34ac812dabb3f54389148bcd67983dff173dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2211/magpie-cli-linux-amd64"
      sha256 "422ed22fa8977a97687b32f719c38e69e9ed2ebcaa18ed8369e4a2ffd8da8c2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
