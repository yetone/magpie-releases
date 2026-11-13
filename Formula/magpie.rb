class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4037/magpie-cli-darwin-arm64"
      sha256 "c598f1f059d46a7b1943f12b415540d7b56eab7067332b77d6cb0de91ef7c8a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4037/magpie-cli-darwin-amd64"
      sha256 "b38350c0a18670426095f56fbdeedfeead4c62308cf08ea82ea587638ec0c551"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4037/magpie-cli-linux-arm64"
      sha256 "922ece43cf1a429771e7536753887a66fdf26faad14d99ad203bad5f8dbd699a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4037/magpie-cli-linux-amd64"
      sha256 "831a74835ca5be600b1338761846c3156f6e0ecc5634a8b043f065f9fd5031ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
