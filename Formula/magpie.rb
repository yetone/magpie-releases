class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2893/magpie-cli-darwin-arm64"
      sha256 "a538c7341e697e24cfff98742a1c4f59ec77bae71afbd8e8c31e11f15141e779"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2893/magpie-cli-darwin-amd64"
      sha256 "07fd0b86959a29bd6292743bf8cfff2cbb8ce5ec7015f412c368892e4b915273"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2893/magpie-cli-linux-arm64"
      sha256 "c85f5ce668b29be0a6e6bea68e1169f0f01b9887260d47befd4d02d19483712c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2893/magpie-cli-linux-amd64"
      sha256 "35bc377f52366a269110c4ce5a60ddafc8287e21913bd051fc2a626e40bdbfef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
