class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1849/magpie-cli-darwin-arm64"
      sha256 "e2bf518758003b8b2cec2bc60391375ff7f6539d45426b3ce78f57866fb12e14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1849/magpie-cli-darwin-amd64"
      sha256 "93988bf55b86f88d71bf9b7877eb0b55f7f7cafe7e1dee4e4c34bdfcea950b0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1849/magpie-cli-linux-arm64"
      sha256 "d157ea12e82ab47c6d4c83d0b2ffbd7d5a98725e807b0a88246f007f6ba285de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1849/magpie-cli-linux-amd64"
      sha256 "236272367661f8d63036bae148c9eed7a6d464886a4b1cee6b34f71462f99c1d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
