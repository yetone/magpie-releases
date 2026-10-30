class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2120/magpie-cli-darwin-arm64"
      sha256 "43b495ee734287187a8e19867feecd7d51cf08648c23ed840458997eada2aac5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2120/magpie-cli-darwin-amd64"
      sha256 "f12599ceca8afaeec79cb0525b11794680a64e996dc42ff7a4aadc1e0ea296c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2120/magpie-cli-linux-arm64"
      sha256 "0a56575a37c6331e5987f4ead64f72e23598025463228943c948a37b4eb64457"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2120/magpie-cli-linux-amd64"
      sha256 "c8be2a33c2c2c8296272a15a155c2aa6b27603402eb912c9eea34d0ac0447dc0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
