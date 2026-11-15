class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4229/magpie-cli-darwin-arm64"
      sha256 "e6c6ca256790843d61cac74fe715fbedf1e5120875b486a8126b4614d5b7e7c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4229/magpie-cli-darwin-amd64"
      sha256 "4fed479712514bbc562ebc147970d78f6b241d6867162701d51f10367f2bd98a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4229/magpie-cli-linux-arm64"
      sha256 "97d20b0a91b5f1077de1e290233525c154960544e3215448d29410a22fcb4bc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4229/magpie-cli-linux-amd64"
      sha256 "b1166138e47805d6189a86986d43977a8c7e1c28a1ddd2e221a1f4e4ab20a059"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
