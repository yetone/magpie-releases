class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1146/magpie-cli-darwin-arm64"
      sha256 "1c5125d0e235aae6c23cd2e119a702ee0b35cb7ebacb716d2ee7600bcc53be64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1146/magpie-cli-darwin-amd64"
      sha256 "9ce002c5faaf5bb21541d7c677df5275b52184d6b3c54f8972111559e11e6adc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1146/magpie-cli-linux-arm64"
      sha256 "dff9183c99875a795a9f1cb557c770c8790a08f19670989eff42f02b67163a4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1146/magpie-cli-linux-amd64"
      sha256 "f2ea6d28c7dc561f81b60d2db5eda23356d4c84ebbe44dac3f26f5dd4f0d9e8c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
