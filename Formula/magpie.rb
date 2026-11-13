class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3961/magpie-cli-darwin-arm64"
      sha256 "3d365e6286b98fdd55d7cff2e8639e8b46141e67f3c9b4250a270d79beb084c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3961/magpie-cli-darwin-amd64"
      sha256 "76fb2010c46b3878c5a2e967c4049ad726f0587f2821c0f128d9e4b232b89ef5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3961/magpie-cli-linux-arm64"
      sha256 "15710d854a0657fb098013ceac18545d0ea832505992f46fc808fb319e2d44eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3961/magpie-cli-linux-amd64"
      sha256 "579ce438b7952a54298ee964a5aa12dc76a5036fe41fbd4b4acc091234137b7e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
