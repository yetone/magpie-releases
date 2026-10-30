class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2222/magpie-cli-darwin-arm64"
      sha256 "5e684e82066234b380965887decd8f57f13104ae08923444d922ba18db0839f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2222/magpie-cli-darwin-amd64"
      sha256 "41e29767f1e32508128b6d70604a19546ea88c595de84a3b0ddd9a75debeffad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2222/magpie-cli-linux-arm64"
      sha256 "2d7c44894b175d76e4864308a484b85d109cb4752a257b19923178ab168b7765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2222/magpie-cli-linux-amd64"
      sha256 "57cff630c7340ea2b11f52a3239b960ff770c7af00141eb5c24ae1ec84f1b9a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
