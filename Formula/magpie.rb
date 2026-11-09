class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3480/magpie-cli-darwin-arm64"
      sha256 "503802e3808e6e55aa10f616af23b522a321d9d4c27daf301b490e8e3e4e9679"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3480/magpie-cli-darwin-amd64"
      sha256 "0f75ccc5e6181c55dccfc52c5625d06c3c25608feea41e949612447b59918127"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3480/magpie-cli-linux-arm64"
      sha256 "6ba93142f916bd2a024d10ba91ec41909ca4aee811683006b1f96909e17d2039"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3480/magpie-cli-linux-amd64"
      sha256 "75516f42ba6a540114883dac33e0ddae57b3d231cf6a6fd622d07c9a63b06252"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
