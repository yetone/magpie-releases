class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4460/magpie-cli-darwin-arm64"
      sha256 "132e16042e0ac3b4cb7916c205f8a475d7066d4b48c188d40e93ae3565bd3da2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4460/magpie-cli-darwin-amd64"
      sha256 "06120ba4e1e379656e47be528a51a1740d7ec39cd6f61e8c24d0ecfaaa3511d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4460/magpie-cli-linux-arm64"
      sha256 "b67600f8dec2d196c7d56f7f62748d697f15bb2f634038cdb407ef1522b64646"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4460/magpie-cli-linux-amd64"
      sha256 "df64b04b2d2aaba50b58bd0de354e6752b345ca74c682d8ec8c60fd57246391e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
