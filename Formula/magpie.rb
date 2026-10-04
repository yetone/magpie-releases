class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.908/magpie-cli-darwin-arm64"
      sha256 "6d8a67f7ab276c4ce673848b983af0fcb0f76e100f650c87a800ca90be80b8a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.908/magpie-cli-darwin-amd64"
      sha256 "983b401c3d9cb60d761b809fbfbe4ae80c6dc6e6c231c76950d45a78eed02a2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.908/magpie-cli-linux-arm64"
      sha256 "2b6a662262a05e9eda58723aaa70dafdd7bdcee7e58d44350ef87bce66214ee6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.908/magpie-cli-linux-amd64"
      sha256 "612ef9209784bd37bc16b4ad01254583303e095a12e7c2699e70cf37db75689a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
