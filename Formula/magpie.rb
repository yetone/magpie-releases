class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3788/magpie-cli-darwin-arm64"
      sha256 "ba32391206acdb367b487fa8d598d51419232bf80669fc6eeeae86d70ed5eb9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3788/magpie-cli-darwin-amd64"
      sha256 "e49a29a50ef9a8c1e63e2a13aab1707ac66ca651c6a509c2af9e4251875e65da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3788/magpie-cli-linux-arm64"
      sha256 "62ad30a92214310acab9212d4304dba07e90c7c000d1227c04ae61a8aa2d79ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3788/magpie-cli-linux-amd64"
      sha256 "a5d247a855a1ddec2ab38839bcc8da9c33ff6bc1e6b0ea49a07de2cb40f23102"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
