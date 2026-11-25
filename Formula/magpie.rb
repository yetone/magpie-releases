class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4780/magpie-cli-darwin-arm64"
      sha256 "d6747d10d6a931784d00e1d9ddc8fdfa59b9f5f219b92d6dcb7b99b7eec802f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4780/magpie-cli-darwin-amd64"
      sha256 "c4c7e0626e2aed496aaa562654d60b8326712c12f9f9dffaab2c49ab7d19abc3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4780/magpie-cli-linux-arm64"
      sha256 "edda2aabd0a55d06ac9f9cb37f6f7dfeeb977e9809bce6ff54ee50a8cc5aa910"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4780/magpie-cli-linux-amd64"
      sha256 "1d65c0df0d99f8683c2f1def74016ce1b3fef4985e2ecf88f420e2d4bde35f24"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
