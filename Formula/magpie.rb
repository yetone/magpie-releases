class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.986/magpie-cli-darwin-arm64"
      sha256 "b2491bf080874fc83357b86b0249642bb282e09e40fac939c390783880ee0b8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.986/magpie-cli-darwin-amd64"
      sha256 "6fb932cbedbc625f55d2279c923a735c19db34080f2d38548203e2b98d8bf775"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.986/magpie-cli-linux-arm64"
      sha256 "6d34331495fe0fd67a12adb3fd5321f46ccdc2cc3a995e9151b31cd9e425a405"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.986/magpie-cli-linux-amd64"
      sha256 "25867bf22ea4e89e24cb2ebd4b4325aa15576bd95c83530c5187a320d9b9e719"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
