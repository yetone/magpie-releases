class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2370/magpie-cli-darwin-arm64"
      sha256 "29789f2449735a576df40e9b88a93f747f0c776e0cd3acbde2cdfaf0107631e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2370/magpie-cli-darwin-amd64"
      sha256 "6a0c67a9eec98a6cd91f12178c492918c221f1fb32243472e48348c31db8a2c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2370/magpie-cli-linux-arm64"
      sha256 "6e1ec556445a419686fe1efd86aad2209a9fc436dc6813f186769c254ac6ca49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2370/magpie-cli-linux-amd64"
      sha256 "e5a34bb41936061607947d0ce989943fb8322496e2a38f5fe3be53647abc8ca1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
