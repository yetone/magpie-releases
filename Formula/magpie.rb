class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3194/magpie-cli-darwin-arm64"
      sha256 "465a04f21e59d5f00038ca550a665a76c8a3496caf8726ee7d21d8bc124cc479"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3194/magpie-cli-darwin-amd64"
      sha256 "9973cb2a638617116b38ffa2c6741a42228b75d670708d7f4c6a8ea921fed6fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3194/magpie-cli-linux-arm64"
      sha256 "4176a92277c6f9e8ad613091f1d3e93053188cf68543813e1bc7ff12bd5c719a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3194/magpie-cli-linux-amd64"
      sha256 "67f188cfa9aece17fa0d843952b6697075b6890e4957ce8cfc9b56e272733f51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
