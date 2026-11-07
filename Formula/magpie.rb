class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3292/magpie-cli-darwin-arm64"
      sha256 "45919c21b34df8d2d77c909caeb538bf0b4e3d89d440dc25d663520bf0f02ad6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3292/magpie-cli-darwin-amd64"
      sha256 "33d082c1eb230a36c616f76dc47c82220cdfd49610d22e528aad28f9388550be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3292/magpie-cli-linux-arm64"
      sha256 "8384fccb12c420792e464971b83089070a9a49f27c821428a49c87aa4b6e9203"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3292/magpie-cli-linux-amd64"
      sha256 "f1781e42086b0f8f84f6aab0a665665a7299b0c13fa849881cad3ed915b1a79a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
