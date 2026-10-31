class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2400/magpie-cli-darwin-arm64"
      sha256 "396ac600b4f791814102da00caeb3c45fbe6205acce42045fb1a58262410cf27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2400/magpie-cli-darwin-amd64"
      sha256 "8bf9f14b1f92ec2235598508d95b82dd744712fb485e7ad391edef263aca0830"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2400/magpie-cli-linux-arm64"
      sha256 "a07a52920cdadf3c410ddddea929b9f3b96a6af163b113ddfbe60ab5dc9f6576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2400/magpie-cli-linux-amd64"
      sha256 "b7ac9d2454a6ae75c36edc7c35d681334faf7dc04c63e67e544849e3ab49c704"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
