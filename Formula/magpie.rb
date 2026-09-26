class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.144/magpie-cli-darwin-arm64"
      sha256 "bab37b41c870b90691b25af801afabb2f51ca23c6639e148fe619578994d5ffa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.144/magpie-cli-darwin-amd64"
      sha256 "29c30b00f0ffdf63b9386d7777e71f826ee05b218c202da2faaefe238d632654"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.144/magpie-cli-linux-arm64"
      sha256 "57f8a62309cbded14e252a5a06847f73e1d2fffce79ae2845c3ab48a64d71cff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.144/magpie-cli-linux-amd64"
      sha256 "7fa837790292756c8a9a442558b22efd1637e9a20efc1d600d168c34eef53383"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
