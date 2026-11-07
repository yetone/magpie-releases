class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3233/magpie-cli-darwin-arm64"
      sha256 "56f1058991921a9cb122b1570842d2f495beea136e59a989cacb8480103d750c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3233/magpie-cli-darwin-amd64"
      sha256 "4e00b0b0fd3470699acc8c1ebeea8830bc93b139c2a6fce5c395a6853f291ac8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3233/magpie-cli-linux-arm64"
      sha256 "e0efcd5b4c04afcb46fe5079d7f1a567d837a0cd6ef9047159ed3455ccc48a36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3233/magpie-cli-linux-amd64"
      sha256 "21572492c393803668f49e6090635a0c91ede7870dba8e5e9d2c9c0aff3ccbad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
