class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1949/magpie-cli-darwin-arm64"
      sha256 "e21dbd28468e2daea61e81c8fabea19c19045d5511aa57ab4fd326eebf3589a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1949/magpie-cli-darwin-amd64"
      sha256 "c834721dd456f0fdbbf2d33db1a25e2a082afdb79a44e12e3f00867aa1e78061"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1949/magpie-cli-linux-arm64"
      sha256 "e88c8e8d8fc03e5f76a866d89c6195f755fd4713953d8ff36002669e4b482783"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1949/magpie-cli-linux-amd64"
      sha256 "5e29daede87d068ac3fef5c60411b51e6996364053a16c5eb337f8f42710911a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
