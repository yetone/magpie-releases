class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1922/magpie-cli-darwin-arm64"
      sha256 "bc3ef78e162e61172e2ab494eb4bb1a9816a9c73bfe19a114894938082fb3788"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1922/magpie-cli-darwin-amd64"
      sha256 "36164586eda33eb2271ac753a60ed4552f1894831198b70e2777e42f7070e2cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1922/magpie-cli-linux-arm64"
      sha256 "c690ebe79ead882f73fcbb738b4a1f6491d0dc1d03d050afa022a03e2ba09806"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1922/magpie-cli-linux-amd64"
      sha256 "d7b727cee812dc92fecbfcd806aed87bd129f9110a1472f9a0b40e90c835b7a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
