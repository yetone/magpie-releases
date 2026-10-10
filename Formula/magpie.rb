class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1159/magpie-cli-darwin-arm64"
      sha256 "f3e012800e964bc306ca4af00f0ce07ffe592ca64f00c718d62bbe946b0ed399"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1159/magpie-cli-darwin-amd64"
      sha256 "cf386eceba9b60b305b931b573f606f8dab8fcff1a313539c2baf2db1dc00ed9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1159/magpie-cli-linux-arm64"
      sha256 "8060c750369984de0a8bf1b95175e5276019b9dc761b4f30e178e13407b90b7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1159/magpie-cli-linux-amd64"
      sha256 "4e66850608460a6a43d0b2f6ebdabff96a1eddc01369c945a06d6a521258943f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
