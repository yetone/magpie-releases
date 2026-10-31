class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2341/magpie-cli-darwin-arm64"
      sha256 "5588cba29b5e6b47f551b60e15b58568b078b0a40b47822f2bb351f997d15328"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2341/magpie-cli-darwin-amd64"
      sha256 "e50af1228c629a5b35d9d3a5d2ee7fbf28eca3f0c8a1573b070255c2010257a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2341/magpie-cli-linux-arm64"
      sha256 "656dd407712a1d928728eef7d5850180df17384c62dda07544613dcfd4fed4e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2341/magpie-cli-linux-amd64"
      sha256 "bfbfaadc8e503f02f51958be2da49e8f14d4cbb5fbb097226fef3b57774d17a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
