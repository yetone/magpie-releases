class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4180/magpie-cli-darwin-arm64"
      sha256 "674510056f2af7cd6ba3a7130058f23f27ec310ab048c72df640f80b1aca4558"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4180/magpie-cli-darwin-amd64"
      sha256 "8c16f45b1a269dbd5ccb51c9131d7d10573a6721474d0c5cd6cd910f08a5d116"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4180/magpie-cli-linux-arm64"
      sha256 "02156fc6cf6684a3790f9cbaefe276aabcd373cb1916396a95b88e0571cd944d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4180/magpie-cli-linux-amd64"
      sha256 "0cd011606663ba565d538646478af247276f13f69da3e019908f152eaf39cdf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
