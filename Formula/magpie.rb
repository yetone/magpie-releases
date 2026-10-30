class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2190/magpie-cli-darwin-arm64"
      sha256 "42ebcfb4cce550b0689038f3ce91b6d6d84c51d91032c1acd52b97fe2e5e8130"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2190/magpie-cli-darwin-amd64"
      sha256 "4aacdf1839fcf25929304b0dfbbaa9b03fb36316f5a1b2ae05798b154ab36889"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2190/magpie-cli-linux-arm64"
      sha256 "e4f5b351821fb732dca2c2a37d7bb9e3410ec363bcfbf78851717082c8b566e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2190/magpie-cli-linux-amd64"
      sha256 "7a909f8155e002dd4d8cbd7fd2d1facd7eec2b1a9c333f3d28bfff16fab0492d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
