class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2039/magpie-cli-darwin-arm64"
      sha256 "1b66d840269b29dfd9b4050d270630e1eeb9ef3e5699d99256a36ee9145a0db1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2039/magpie-cli-darwin-amd64"
      sha256 "fd3d7943c93f4e0539263faeaec2fbc41e2ad332d52fde66b6896ef536be7ff2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2039/magpie-cli-linux-arm64"
      sha256 "3d5fb0efa8b64f181e90799759456c5e98a57068097e84df2c07a063765e55bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2039/magpie-cli-linux-amd64"
      sha256 "5259524e2982a575fa9251fb3d0fce922b7ee04a23f6dab9a0c36673d0e262e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
