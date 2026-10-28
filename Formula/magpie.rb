class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1864/magpie-cli-darwin-arm64"
      sha256 "1ad2b20792cb1078e6eb42058daad248c86f8f87094e402eed260046aac8920c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1864/magpie-cli-darwin-amd64"
      sha256 "340827d5abf13e002b790456f7af4adf9043a78e970945d3119c7d8bf941d7f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1864/magpie-cli-linux-arm64"
      sha256 "bc303e45a4bac83267522f033510ec17429fe6c2f3ba900ae368bb0fe953e089"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1864/magpie-cli-linux-amd64"
      sha256 "bdbfefed22013d442e4a1c3fed16df797070e9f956ad9a62ad1617b76f880913"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
