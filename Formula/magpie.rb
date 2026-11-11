class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3790/magpie-cli-darwin-arm64"
      sha256 "aeda13af050265b03c30cd5eb6401a8b99955c95d7473fe160cd3a25475e80d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3790/magpie-cli-darwin-amd64"
      sha256 "6a0ba49a73a4631aa832b5eb2b8d9837a8462dd92bc40489548e91551bc7b4af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3790/magpie-cli-linux-arm64"
      sha256 "c377c1285924e5ed543e9bd31d28bc3792b68a487fccf0e31e0e4c7844fe4915"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3790/magpie-cli-linux-amd64"
      sha256 "dca2f403c4c2c83b56c39e1cbcf7b4814b7fb0de063459998585f5064917cf45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
