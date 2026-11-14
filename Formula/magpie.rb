class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4171/magpie-cli-darwin-arm64"
      sha256 "3187bd11c99ac205bb2698bb6f0483779229242f01197a6eedb54a824d2c7ace"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4171/magpie-cli-darwin-amd64"
      sha256 "bf22624addd2f93e6e42f96a59ffb177c5b3f56de80d599c7d9759cd1bcbdcb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4171/magpie-cli-linux-arm64"
      sha256 "2cc929436632a2f25bcf2264fb267e70f400f5bb4673e1b8ff3311d1b158c675"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4171/magpie-cli-linux-amd64"
      sha256 "3eef330ebb771258881ebcf1cc280e93593f9065f44de47e57ee37ef8aabb092"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
