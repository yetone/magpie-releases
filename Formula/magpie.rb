class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2330/magpie-cli-darwin-arm64"
      sha256 "10f4002865936ab51e272aeec0de1e75bd0809a19fa2d8ef47e0c50bdecaa182"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2330/magpie-cli-darwin-amd64"
      sha256 "04706f8365b5279ffb79787953dca38fc2da00de15c8c5977bdb230835ef22b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2330/magpie-cli-linux-arm64"
      sha256 "ba947de29541df0f243af241f04bd0779352e0280950d0c581111d399a429d56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2330/magpie-cli-linux-amd64"
      sha256 "bf21f71464e6935f73dc0531e78df4b506c44505dc096f1b1574af70e34dac94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
