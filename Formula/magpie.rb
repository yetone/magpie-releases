class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4582/magpie-cli-darwin-arm64"
      sha256 "3187ee06bb2fdd11d05c6624eda017ef567793bf4916c160086bf26df55dede4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4582/magpie-cli-darwin-amd64"
      sha256 "24b075c72ae11aaeb772c19b30e33aab2bfb98bd29da167d6b24dd643f01a406"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4582/magpie-cli-linux-arm64"
      sha256 "185948a63ebf9fb1efffcc079b3e513baf66ac350d403f45adcef08f03b74729"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4582/magpie-cli-linux-amd64"
      sha256 "6b233b7b74364bf0205687ebc186adb223f2403bcc7f1d89f01af54ba24f8408"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
