class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1028/magpie-cli-darwin-arm64"
      sha256 "aff5d5ec9699bd3df7103ccad07a0cf9f3a885b5a05e0f8218beea0c0a853850"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1028/magpie-cli-darwin-amd64"
      sha256 "5c690aa826822dfe3e19953870200aeb2b21aa25386859ee31a7a730094084c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1028/magpie-cli-linux-arm64"
      sha256 "25deb6488501f51a9f08ab3bfb77cf070737c505c25df2f399c440ba21821fe3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1028/magpie-cli-linux-amd64"
      sha256 "033155514c04f67379929c41c876a020d81a52f4720c4f4baa2887d8b258b02f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
