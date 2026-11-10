class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3510/magpie-cli-darwin-arm64"
      sha256 "be3bdb52712152e48cd606231a47b21594ea86bf0ca12cb8960a95ab26a1a285"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3510/magpie-cli-darwin-amd64"
      sha256 "e20a9319d6f7e689812d8bf718d4e20313a0e0d1c797b447f84c022f19730072"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3510/magpie-cli-linux-arm64"
      sha256 "80e3a869cf42cc4cf6586b5acad7c4d9214020ed4cd8afe3ebd25ffa189b436c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3510/magpie-cli-linux-amd64"
      sha256 "556913654941b9664a9186def85468757a61206011b28dca406185e65e16e6a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
