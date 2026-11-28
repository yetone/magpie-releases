class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4999/magpie-cli-darwin-arm64"
      sha256 "1615d92bfcf7cfaf8af67b9f068b9b49e9524769afe998996702a2f3bf706504"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4999/magpie-cli-darwin-amd64"
      sha256 "cc91da75acc22ed3b26b358d5190ded35c85191450eec22fc6be01d91381103f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4999/magpie-cli-linux-arm64"
      sha256 "60f92f85bb336efb65e2a3841f8039a3c4487adeecc5f1f4860cc7ba437c14a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4999/magpie-cli-linux-amd64"
      sha256 "3452be31d1abe7b37e93cc0d4c1d62e85a472d1a0cadf88969f037601543b11b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
