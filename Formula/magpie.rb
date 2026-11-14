class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4179/magpie-cli-darwin-arm64"
      sha256 "ebe378e2c3d150a44627cbc9291b35bbef8bf92e08208d8b5e7852316f7daf9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4179/magpie-cli-darwin-amd64"
      sha256 "8903b7845456f5aab844450c2d847483de457729652a4c33b4aa6381b80e976b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4179/magpie-cli-linux-arm64"
      sha256 "b37eb3816c11508d22d804d4fd840373e56084c27ab5c6d833cbcdb5f0f5c2be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4179/magpie-cli-linux-amd64"
      sha256 "467378b5a81bd3d9c97f9af08b3f465572cde40b85434e2802b9d2703d03742d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
