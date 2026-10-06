class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1077/magpie-cli-darwin-arm64"
      sha256 "1f2ee94e717728fa7140fab073dd9e1c66b431ec549efe19576f7dc2c945c1ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1077/magpie-cli-darwin-amd64"
      sha256 "a8d59bf194da1723b62c009bb11852e6a6738620e771681b92e7a4d4ab91e647"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1077/magpie-cli-linux-arm64"
      sha256 "f9ece8c9c3ef4f5920652c6a937fb5dea20712fde8afa22358b81efad6f7c18b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1077/magpie-cli-linux-amd64"
      sha256 "b1b83f1e4d6eb6292b2714d758df02365684a724c083035df6fd27b99782fef5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
