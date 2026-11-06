class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3190/magpie-cli-darwin-arm64"
      sha256 "e5c3c8a348c99295f1fa7e9d908677bf468d439cb020e883debf4bb028352d87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3190/magpie-cli-darwin-amd64"
      sha256 "f124d749347745be287c104985ed997f22e135a355eabf2d4789cad843132286"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3190/magpie-cli-linux-arm64"
      sha256 "421ee54fa588b870a597d6295bdbf38291b1f34f5ae3cb76ee9fb4af96920242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3190/magpie-cli-linux-amd64"
      sha256 "6b2cef811ca741852c52ea25cf39533b8cb9a56ce49165e76ce79d0c01b9c1f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
