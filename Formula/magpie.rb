class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3035/magpie-cli-darwin-arm64"
      sha256 "9ce9678bf454247a18dde325e40e7f958a3b83b6e9fdff3572381640b24ecf21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3035/magpie-cli-darwin-amd64"
      sha256 "5ce4a43f4d0646cebe4596b0cc96fdbff2c82b1ce96301d9ba7622ca667493bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3035/magpie-cli-linux-arm64"
      sha256 "427e9f8ae18db64ae1fe1146f4d5a38d6ee2e0acb2506727cc1a7b352c4136e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3035/magpie-cli-linux-amd64"
      sha256 "592d89d396eaf92194c52a2bbd988d57fa949b2a33c7d954d07cc3238e0d3f7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
