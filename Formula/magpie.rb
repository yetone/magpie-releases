class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4327/magpie-cli-darwin-arm64"
      sha256 "805c6e8121912e38e61cc71eb5236a253936a1409f3b977be571dd31555ff528"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4327/magpie-cli-darwin-amd64"
      sha256 "0910c640e4631c88fb0659a4be2a151c075a690eb7f94be9b10cdd1f6754ce2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4327/magpie-cli-linux-arm64"
      sha256 "4967ae1a82b3acae917c7bf7b40ab0717c452fbfc953edb1e8a24eff4ee18445"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4327/magpie-cli-linux-amd64"
      sha256 "53b046a3440245296f545459b2fde72d60b0e0746bd00aebd6bf6ca7ebdc55a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
