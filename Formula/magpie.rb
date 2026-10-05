class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1050/magpie-cli-darwin-arm64"
      sha256 "b254daa300ea4675586524a3daa111c311832106c4635dc8c318a7172e178223"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1050/magpie-cli-darwin-amd64"
      sha256 "41e41f6f4557d0dcb00dc70b4507c8d98237a43a8787636a5ff26e26394bedbb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1050/magpie-cli-linux-arm64"
      sha256 "e3109b8c950636bc79729dcd790f7aeef8ec0ceee2c6cc812a979268127a92fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1050/magpie-cli-linux-amd64"
      sha256 "33643e8374fc1d828b5ff01c4e58aaea041ca2883bb16fd88480cc416d150760"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
