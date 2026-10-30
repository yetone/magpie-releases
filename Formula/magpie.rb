class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2264/magpie-cli-darwin-arm64"
      sha256 "56d59180fde9c59be025155b4b258d062b94dc6d150e6a31badc92a6e5934bf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2264/magpie-cli-darwin-amd64"
      sha256 "525ce9cb94616383fc85f7e751798bca784669c1a5c5b4e1d26ff3c5ec3cf567"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2264/magpie-cli-linux-arm64"
      sha256 "324ac15ad1455b732de821691c4930a31ee8cd6db47b9e9d09d99e319fd12eb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2264/magpie-cli-linux-amd64"
      sha256 "079270b7677235f3f45d39a53d7f50c2c1478d3773ad319f5e84951bde2eaa59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
