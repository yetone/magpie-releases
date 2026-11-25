class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4793/magpie-cli-darwin-arm64"
      sha256 "0c8a6de9bdfd48ee74201ae47afc6fd83a25a0a6101ac88bee13b292a49910d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4793/magpie-cli-darwin-amd64"
      sha256 "4abb1b6cc604918b7b999a340b5355e875a1709cac1045806b18131355a3e4b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4793/magpie-cli-linux-arm64"
      sha256 "5ca9813955f443b702679b0c9c6e5f664ac057060d7f49735b4a7d981aef70f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4793/magpie-cli-linux-amd64"
      sha256 "014f8006554fc010810d3898e0435ee41701b1cc23fd3f3d91e6f274420d6a97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
