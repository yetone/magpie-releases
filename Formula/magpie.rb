class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3049/magpie-cli-darwin-arm64"
      sha256 "2e50313e98d00a6c5860e1c143507f97f42f14f38b91401600a1923125b7d314"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3049/magpie-cli-darwin-amd64"
      sha256 "571eb1f81af3ccdd37f0a5608d98b5ecc02cc825533294dcdb7b5adb0f1e31b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3049/magpie-cli-linux-arm64"
      sha256 "6fb7a47f284eab73227596a7c0c43a789ad28d743b00336401536ea847afca32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3049/magpie-cli-linux-amd64"
      sha256 "d9fd4478f24ea4a54a6262295a0f80e8aa4e3a68f103d454cffd377bd6f1ebb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
