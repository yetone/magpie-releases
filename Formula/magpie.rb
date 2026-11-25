class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4787/magpie-cli-darwin-arm64"
      sha256 "46c0cd9c15df7f351ff508ddc7a3b2a9484b4ee6909fd0b765bdb44d29062b14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4787/magpie-cli-darwin-amd64"
      sha256 "2c1bb2ba0a7004cd662308d66f439ca8d64a7217fab204dfbd77c219c2171c37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4787/magpie-cli-linux-arm64"
      sha256 "3134f9e0bb34ef14fcfb21a3c40bdb12907e06ab2464c93b543854e6c1688852"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4787/magpie-cli-linux-amd64"
      sha256 "26190ae0939d0a5d84561eaea008d6498a117ffad7720d1a7769bd078df7b75d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
