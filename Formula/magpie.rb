class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1078/magpie-cli-darwin-arm64"
      sha256 "830adf7238d85a4c17648ff588408423212b0760625e5fb322af04d6f8806e23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1078/magpie-cli-darwin-amd64"
      sha256 "b936ec4867dfe61db6e7bc2b3550c74ade99cb2c00a2e3f5e1db05947ce0f18f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1078/magpie-cli-linux-arm64"
      sha256 "fa081a13ae933880ac433624efab91671bd1dc3961ea25be6a4b0fc81e95f2cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1078/magpie-cli-linux-amd64"
      sha256 "9a4c4f440955bf0eafaf7c8f6205ad13a95a70d31e1f466997fff0cf2cafef93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
