class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3956/magpie-cli-darwin-arm64"
      sha256 "a165081d99b04737b955c1d3a47fcc2494d8c480bd8e3a46890b7adac0d6225a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3956/magpie-cli-darwin-amd64"
      sha256 "0a4f17a9f3cfb3f3a0794be619e1422e5ff5d45facfd9c8189606099e6ca9e7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3956/magpie-cli-linux-arm64"
      sha256 "5934522c61d1556bb2c82422cc6989865f8e6aee492a213289c0b2d1b2195ccb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3956/magpie-cli-linux-amd64"
      sha256 "0b05505dd7a3b990a7605e5d0af9e7d4b337ccbc6cd26b76aa56fe9b786b5de1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
