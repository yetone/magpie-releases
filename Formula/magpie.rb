class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3400/magpie-cli-darwin-arm64"
      sha256 "153ac75f40b8c7e7e28ff62dd98a4adc4f329733ee2dc3c471da343bdc849b8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3400/magpie-cli-darwin-amd64"
      sha256 "1e3527e4914b1b97e4b3965d5178ca093d545b862834db38b21be71387e82348"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3400/magpie-cli-linux-arm64"
      sha256 "c1a8228f063a2273857a703c9392bcf46cbefe47e741da7f1b3a565200f3ee49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3400/magpie-cli-linux-amd64"
      sha256 "27aa76bbd7b577a88e22780ee55e43eeb23ed45cd7c792f3e5ea5675794d065b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
