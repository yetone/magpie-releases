class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1966/magpie-cli-darwin-arm64"
      sha256 "5b868a469ebf08116205efec63a91e173cca723887783f4b809b875234b028ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1966/magpie-cli-darwin-amd64"
      sha256 "ec6af7468f90779bc9eb64a28e042daf9a75aed2d6a4c43706e484b26d151ade"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1966/magpie-cli-linux-arm64"
      sha256 "640a7b3550e16b9533daaec1d46dc55725bc78db24c6c34ad6e6bf96c24e97e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1966/magpie-cli-linux-amd64"
      sha256 "bad160a53f5b00ac2dc1524fdd2ed61dab85a59953b30d10a8672c6bf4579567"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
