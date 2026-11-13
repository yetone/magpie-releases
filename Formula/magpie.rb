class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3987/magpie-cli-darwin-arm64"
      sha256 "5b07b900cb70102f944a1f5f53ac35d5e498e67f7e603151e9a84908ea8fcf52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3987/magpie-cli-darwin-amd64"
      sha256 "fff2bd9c84acf01f4563b06fee258f1bed6a441effa021a2287af8f0c2dd1349"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3987/magpie-cli-linux-arm64"
      sha256 "1f018189536c0460de93be243e7b182f17394eeed9b9084dd9722c33f3bddd0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3987/magpie-cli-linux-amd64"
      sha256 "0d9c74932935dcea69708dc21a8c4c3cc2f6d5051dfdd5f233b7e83d3ade10da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
