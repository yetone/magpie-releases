class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2113/magpie-cli-darwin-arm64"
      sha256 "2c2a2d66ae276e0b067cbc72e15b401ae45113582a7940a40234ea2a80396ff8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2113/magpie-cli-darwin-amd64"
      sha256 "a0305f1aab56fe3ab7fcc7e57c6dc6337345a70182cada084f0c3bd6eb96b68f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2113/magpie-cli-linux-arm64"
      sha256 "e1ff47308f1193534e866b6889ca0f98ed5ab43bf3ef852993b2febf3e4ee363"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2113/magpie-cli-linux-amd64"
      sha256 "f2bf5e230a454bd576bcac3146f93bcb1a59b2d68e454d8d7b719037f876437d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
