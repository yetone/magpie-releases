class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4554/magpie-cli-darwin-arm64"
      sha256 "4de473a7cce23b6bea1439595de13b64e304680a3233e8dad2571536a2dec5b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4554/magpie-cli-darwin-amd64"
      sha256 "7b1511b15adc2dc360225cf70c94dacf07eb8889993116bc231d02167978f6d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4554/magpie-cli-linux-arm64"
      sha256 "8813fdaac1802d94760c2abfa6f3d74429b3378ea2cccf156da2bbbc2575b090"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4554/magpie-cli-linux-amd64"
      sha256 "c70cdd81f21e3726945faddcb7a98002c3a925c3cc233afc1422f72993a264db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
