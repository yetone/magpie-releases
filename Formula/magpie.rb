class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4981/magpie-cli-darwin-arm64"
      sha256 "4c385dcc7ea7b8ac9b1f073427f72effd9e4511051f518eeddb180dc90f41c2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4981/magpie-cli-darwin-amd64"
      sha256 "a33181fab4a2668ca2597c2e461f3c2cbb7f3e63d643520abe0a209d853321bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4981/magpie-cli-linux-arm64"
      sha256 "cb8d47a2dc439ca8c5c1331f4c608a3b49655a5c548f39c9938609410f930ede"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4981/magpie-cli-linux-amd64"
      sha256 "4c84377567a884dc69cf1bd3317fbc4b0c18807dbc7520d0adfdc169946473c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
