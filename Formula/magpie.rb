class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3024/magpie-cli-darwin-arm64"
      sha256 "a57f30d065a28f1d6e3f299fb9c0d1a2740ed11397bef2b9cee8f2087317e06f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3024/magpie-cli-darwin-amd64"
      sha256 "aadb73901d09848214f42751967cd810a96820cb0847a7b6480e8716d9159563"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3024/magpie-cli-linux-arm64"
      sha256 "f7b00715f7444dc9195851cb0a64975f7ee11173098da54999cc26d5a8fe90d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3024/magpie-cli-linux-amd64"
      sha256 "50937b41fd8ceafccb74c76348d54da1c8a8d63eadc550c84bc8d9cd752a74d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
