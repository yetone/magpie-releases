class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3134/magpie-cli-darwin-arm64"
      sha256 "5b45393b52f828dbcc66a61653a651ce33cba4651a04b192c14685ccc8e428da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3134/magpie-cli-darwin-amd64"
      sha256 "b8bb520bad3ffd13f3e90336bca4e8b6b0c77eb08bc41cfa8164aef67406634a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3134/magpie-cli-linux-arm64"
      sha256 "e6dce829a7a336e05d0e0a27ae91652e3ce57f5912a178e968c761379b946e59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3134/magpie-cli-linux-amd64"
      sha256 "50388bf874fa6a71633cde860ca0c554b67035ff180f0af03537bccf0410961f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
