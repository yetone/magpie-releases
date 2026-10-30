class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2132/magpie-cli-darwin-arm64"
      sha256 "3fe0ec1b542057d872c4f2e7c6bd965ba16cd2492cb499297e87a6289cdc0b0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2132/magpie-cli-darwin-amd64"
      sha256 "2b9c09c375b4cbcb23f488531ffd4dfa26b8f575988bbab41431efc2e5d1adc8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2132/magpie-cli-linux-arm64"
      sha256 "ae90f8f023289f36222621913e099ecff9ce12ce34ed55abfca8f7194a966b0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2132/magpie-cli-linux-amd64"
      sha256 "1938c283a5e45b16ad13614fa9defd98552aa7b97fdcd8f1ded862bd1596a85d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
