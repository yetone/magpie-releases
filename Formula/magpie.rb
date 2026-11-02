class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2661/magpie-cli-darwin-arm64"
      sha256 "3c9c72d97627915f81e39f39ee18eec935def1af23f2c8e7a8e2dd275e9795af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2661/magpie-cli-darwin-amd64"
      sha256 "97480739abebff6d084b455d09b2dacb2039c020ee4373ac0da1186c24536f47"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2661/magpie-cli-linux-arm64"
      sha256 "3c2d8d36d45c246bbbd5304365f1251c70d565b3c9aa024b80aebad84590b567"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2661/magpie-cli-linux-amd64"
      sha256 "937e760adb983b4984c23603ecb8488ce6d425aa172eafa0ff725c7415e8ca93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
