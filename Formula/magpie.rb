class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4561/magpie-cli-darwin-arm64"
      sha256 "5d0a5efdf3b2e7bdef8afc2fc31b030c2642dda930b2ee9bcc2b3eaf54670694"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4561/magpie-cli-darwin-amd64"
      sha256 "9862198ce9edd96ee299eabf303138cad37b27261a7f246dfb12374d2c854d85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4561/magpie-cli-linux-arm64"
      sha256 "25afd5bf5d1b8dca52b4e095548552e68bf0649540fea6118bbcb727ac3c860f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4561/magpie-cli-linux-amd64"
      sha256 "3c7588344caefa7ba738f5b0f759350a6a40b7e7f756cf44def843a648d6adf0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
