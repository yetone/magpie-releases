class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4502/magpie-cli-darwin-arm64"
      sha256 "0c857ec352f5b56f19e396cbccea34013aa10913782e9b8ca3b478d7b207b413"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4502/magpie-cli-darwin-amd64"
      sha256 "a6801f252c28f255479ba988aa623ae45b57a777b59d9e7c7500a39714e7bb9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4502/magpie-cli-linux-arm64"
      sha256 "fe56a1f4058ecfaaa4ab880b5b2a1ae6b4221a385f3c2ee56edcc3b690c2c8d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4502/magpie-cli-linux-amd64"
      sha256 "1d66b98247d81052514c819ae53a898d025f2ffae576a6e5dc8d9d90b4582282"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
