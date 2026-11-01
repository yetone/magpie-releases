class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2575/magpie-cli-darwin-arm64"
      sha256 "54aadd6a904a9f8b87a580274306014a6a1752f72ba65bccf5e0da2d0653775b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2575/magpie-cli-darwin-amd64"
      sha256 "ff5e1f32360b3a64ecb80dd6c8fb3e8c4a7b6137f854b082cecec8ac27a07786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2575/magpie-cli-linux-arm64"
      sha256 "920dca9a403a981eb9376e4e7b6295cca841cf42ac5b6e33f77389d3bcce8eaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2575/magpie-cli-linux-amd64"
      sha256 "8d5535d992b00f168cc165a04f80586c9c738eb6f35b7dd223c984f81012bc86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
