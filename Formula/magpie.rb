class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3148/magpie-cli-darwin-arm64"
      sha256 "cc6c6bc3ae62386af30e4a034835be4a6bc3caec7240d64ba2648201afd16eb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3148/magpie-cli-darwin-amd64"
      sha256 "301122ef3fe233a62d0a5eed60824c8f88c1805c2b11382790354bdcf22449c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3148/magpie-cli-linux-arm64"
      sha256 "822c836ddbc34f12d26e9c14bdd8fa9a6a33f2494b8271ca081613fcc6a07f44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3148/magpie-cli-linux-amd64"
      sha256 "06c85b20db6de4763bc6a2df43aa8168262013b3a666d4edc0a042eca6977e20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
