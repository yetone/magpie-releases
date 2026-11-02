class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2713/magpie-cli-darwin-arm64"
      sha256 "1004357bfd72f2dfa3b736097df8c12036859161ca246cedd3b123f7b0f395bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2713/magpie-cli-darwin-amd64"
      sha256 "0b18a8400b26881b382cc92c0cf083d022d6314f11576de4737be5ea1a61a95b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2713/magpie-cli-linux-arm64"
      sha256 "5904176bc5b66831fb4e7df9c0cbaf817b00ba808714b43e627ed4d44bbffecf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2713/magpie-cli-linux-amd64"
      sha256 "2af697fde6afad17e93dde30a625a25c253deeb257c93ebe169a056e328d69ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
