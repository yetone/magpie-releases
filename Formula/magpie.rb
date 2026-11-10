class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3601/magpie-cli-darwin-arm64"
      sha256 "c8d584061f06380734b258e70aab8c0ab45dd93b91795508d7bd9052681ebd27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3601/magpie-cli-darwin-amd64"
      sha256 "71e3e54a6cd5e16e4dac6ffe9aac17daa448d265efca5d6218005cbc09fa84ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3601/magpie-cli-linux-arm64"
      sha256 "57542a5f88d2f42754d0b1641c66d46ea9ccb531dc20e942682ff679445a9caa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3601/magpie-cli-linux-amd64"
      sha256 "39c6d6b00922a0199c311176f7708aac152194f5c847cd9c5602da09c160443f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
