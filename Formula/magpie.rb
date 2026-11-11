class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3784/magpie-cli-darwin-arm64"
      sha256 "9ea84d7b8fbfcb87240b3d8e838e530f6e3905467c1c2e983b13e3932f569a14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3784/magpie-cli-darwin-amd64"
      sha256 "edefb24ba4316fe53f28c64e16e82e8b760d239b0f813743c09e56ecd9d66cc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3784/magpie-cli-linux-arm64"
      sha256 "d55125da36a61b13cd66bae2526457d045ec78767c93b21be196d28bdbd14f50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3784/magpie-cli-linux-amd64"
      sha256 "2bc59858d9cebbdf9541cb84b35a7edb84de86da03b8d7a18e99caef7d3b7596"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
