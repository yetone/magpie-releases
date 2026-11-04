class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2902/magpie-cli-darwin-arm64"
      sha256 "7e9d7b688cc84794ee970005910cbc241499c87112e114b31fc8cbb82eef7c1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2902/magpie-cli-darwin-amd64"
      sha256 "7ad7e3c98b74a901d046f5647335342f33132ece6026fdf8a8cedb325046860d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2902/magpie-cli-linux-arm64"
      sha256 "42cbd669eac62cc9b72b44ef4278f1e7af55179eacc7cacc9df6900c6f84aaeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2902/magpie-cli-linux-amd64"
      sha256 "bfed76822957f926aaf4ebe8d87eb21054af00c4399e102f92f936634869ad21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
