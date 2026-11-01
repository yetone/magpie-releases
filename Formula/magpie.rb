class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2577/magpie-cli-darwin-arm64"
      sha256 "794e4efc7b822d44c334df19a4b45ce11e943582b89817fdd8adfd47ad8e9f39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2577/magpie-cli-darwin-amd64"
      sha256 "9e16c7902ce8f38b4c9fad78e69d3edc99516ed1a46bb42a1b3b2d52da822c45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2577/magpie-cli-linux-arm64"
      sha256 "5bd758fe82aefacb444ca378acc5ac0f57ac0947de2e49d79f5a75c99f5cb9e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2577/magpie-cli-linux-amd64"
      sha256 "d054c3852f794f863caa369e4a91366e02dc1fd94c51de67b5791ac20dcc8f6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
