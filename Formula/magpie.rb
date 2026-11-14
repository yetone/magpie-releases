class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4122/magpie-cli-darwin-arm64"
      sha256 "a0572855f44a198ebfb3c1db71f963e048022e8eda833d00270883efe6ce0331"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4122/magpie-cli-darwin-amd64"
      sha256 "c243e9e9bfe263fc99e2fd85f9ac8c80161bae8d9ee05eea03b34bd8d8db5415"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4122/magpie-cli-linux-arm64"
      sha256 "7335e020292d62210fe46da6bc37dc0202b206f59930ac2b3a2a319ae9246057"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4122/magpie-cli-linux-amd64"
      sha256 "bb879010f01eb7e5356cf32c600a691291fb23fe11bdcccf4728fc9da211d213"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
