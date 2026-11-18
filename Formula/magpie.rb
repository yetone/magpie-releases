class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4468/magpie-cli-darwin-arm64"
      sha256 "7c0b82e2cdea652f2a4bec77a7666f0ebfd87f93529d6d922f2cceacf9d4c2c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4468/magpie-cli-darwin-amd64"
      sha256 "abfa95d8f1ac0eca8c4f8ca42afebf5c2f8a70aefa844d8693d37c2c8aa7a37f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4468/magpie-cli-linux-arm64"
      sha256 "58681a64950da55ebb9a6bfcc8fbdb2ac49cfc54f71e57b81df4b0479cae80d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4468/magpie-cli-linux-amd64"
      sha256 "dbf0d443f1a59174efbcaf5500d9f6fd979d705a7bb0114933432003b20e1406"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
