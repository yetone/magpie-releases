class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4498/magpie-cli-darwin-arm64"
      sha256 "cc006507f72db593bcccfb54dd98a7399e0f5a512e77caf4a872ac340dd1418e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4498/magpie-cli-darwin-amd64"
      sha256 "40125d6d2fcea5c88e29a807fd1b61bc5efb9cd4809d83d43d4ac8453f8aa929"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4498/magpie-cli-linux-arm64"
      sha256 "6920cee5556097edb1ac9c60630e5f63f427ca3663e3c6b3a05ea8b9eab6065e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4498/magpie-cli-linux-amd64"
      sha256 "c0f2c5e7dbd538dd0130cf80b3cb63d4ebc2a4b245e3f32eed9c54ca13e93bf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
