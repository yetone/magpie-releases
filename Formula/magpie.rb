class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3692/magpie-cli-darwin-arm64"
      sha256 "9b91bcea1af07e296e33ee70a542989e8c1adb876ea0f2e674c9bf1dc5cc1966"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3692/magpie-cli-darwin-amd64"
      sha256 "d31655a7bdbfc20a642739903b39a0533e6720c751fa0f0893574a98b62106e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3692/magpie-cli-linux-arm64"
      sha256 "6acd51b0f0ff756d34daf236ac0764f1bfb69ac8188880f19cbf3656fac53599"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3692/magpie-cli-linux-amd64"
      sha256 "c3749d559f83a4ff97e913f0f192efc80750fb720d0da6c3a3d3cfe0b821979f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
