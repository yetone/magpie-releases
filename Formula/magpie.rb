class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3511/magpie-cli-darwin-arm64"
      sha256 "3a04c234e406809dfd1ecb3d4facfbe5b41dd63ea9a61a3915c83ae6ff651b7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3511/magpie-cli-darwin-amd64"
      sha256 "ca3a074af3d7263375e9e5a963b8133ada9f331315f533a719b5e6310b80a2b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3511/magpie-cli-linux-arm64"
      sha256 "aa62817b946a929dbc93235dc5b0fd0709c4feb43e5eece20e8b86d7aa9871c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3511/magpie-cli-linux-amd64"
      sha256 "345e8c87832f17dac050cde3eae645269771741634c0c68d24d823fafe40417a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
