class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5010/magpie-cli-darwin-arm64"
      sha256 "735d82423e466b83d119359716f48454360442c9ca27ba7d88e5be8154737c32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5010/magpie-cli-darwin-amd64"
      sha256 "cf063fd3c970babaccdac7512ee88d200e6f8854bc665b6ada7ec7f8943e8bf5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5010/magpie-cli-linux-arm64"
      sha256 "ea49e69e49445c0a37f4174ac0702e6a0971c858de0166183a84c43ca58a4190"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5010/magpie-cli-linux-amd64"
      sha256 "26391e702ba1d5112a18ca2829d27230f1a9493736b063277aaacac50648f9c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
