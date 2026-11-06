class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3083/magpie-cli-darwin-arm64"
      sha256 "4614693969a45b8f87fff8c3c6012bd698c6858aeb8995f62e9b938395b418ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3083/magpie-cli-darwin-amd64"
      sha256 "ce19c94ff0687b8c75adcfec15ea6996d578d30d624b362c915aac1c9428ce4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3083/magpie-cli-linux-arm64"
      sha256 "36c431ddab2372d18ed963a1bca997f945337ffd60316995bd964ea916ccb2dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3083/magpie-cli-linux-amd64"
      sha256 "b4473e2acac2591e70349aaff3a28d82f23f8fa79ef76f05924289ed9c5c400c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
