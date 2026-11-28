class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5036/magpie-cli-darwin-arm64"
      sha256 "994eed5ecea3d6167d20c580bd8abb920560017c2333a528c2b5d6951459895b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5036/magpie-cli-darwin-amd64"
      sha256 "788c5b00603b2c48523c22cffe833c5cc40276991a0518048ed21942e08e2ca7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5036/magpie-cli-linux-arm64"
      sha256 "5317c3406aa3274bbde09f73585ef08fdd3218e2396f38b85ff4cd34237ea4d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5036/magpie-cli-linux-amd64"
      sha256 "85de9b7128303c8b8b92e35a16a6a116e01b50ea21d0a5e5f6f88cb5426c9fb4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
