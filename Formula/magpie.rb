class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1992/magpie-cli-darwin-arm64"
      sha256 "898115c8bdffe0cdd239184748b7bbf9ef5671c0aa906658bc3a8332d6e64f71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1992/magpie-cli-darwin-amd64"
      sha256 "b21f45147ba43c6a58d4f3301980040c3e53cfe91fd4b904fd3884bef5a78312"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1992/magpie-cli-linux-arm64"
      sha256 "0fcb7d3e0c79e22187578f0219cc8bad23431b8aea92dd017e1e2e40c94e1f67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1992/magpie-cli-linux-amd64"
      sha256 "e2421db2b1976a0d484efe3eb330ff6fba82112ea1782387d3788921aa1219b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
