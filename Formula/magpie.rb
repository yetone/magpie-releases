class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3300/magpie-cli-darwin-arm64"
      sha256 "6e834aa59f18041c68b151893d441898c35e2de9cc03533dddb944c959d99a98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3300/magpie-cli-darwin-amd64"
      sha256 "785211014af34b672d78b814ea9d1c33eebaa902fdd03e601a697f1f1e0fb68e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3300/magpie-cli-linux-arm64"
      sha256 "3de6bbaf23890536edb70db0b0e24ca51d70da3440387211413112fca438a8ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3300/magpie-cli-linux-amd64"
      sha256 "fd9c95868b6d1187a86dbd647955e88b0b74dcbec8083e0ad3ff00868f81c70d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
