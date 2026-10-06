class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1075/magpie-cli-darwin-arm64"
      sha256 "3c3a52058230acee05e7e04506e7ab4bfd252cee7f1b74b9230235759e1181e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1075/magpie-cli-darwin-amd64"
      sha256 "2a61741d7103639e4a28e91b64ca37ee56295dee3e7e3f2e72ad4be58f934ff5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1075/magpie-cli-linux-arm64"
      sha256 "183ccbdcc56364ed832fa8fedac7fbe127e7769df27e3ebc1bd5e7becb5c2c6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1075/magpie-cli-linux-amd64"
      sha256 "728d6d5b6e90cc67f32c65e7c37bb3dfcf3e0f251abfce4a703c6fc710cdff4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
