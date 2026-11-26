class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4825/magpie-cli-darwin-arm64"
      sha256 "6ddac6bee0abfe01c300e829cf076173a470f49f4fea4cd3e75006684f8191f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4825/magpie-cli-darwin-amd64"
      sha256 "1f95deabe7c698377c6dc7dbef6108f6d473a6946b1502c798b0c2d0d08a8fb6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4825/magpie-cli-linux-arm64"
      sha256 "d73707f5be001a946b6e028e06259b241bc9e93c8a0aefdccc06e5ea710b5490"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4825/magpie-cli-linux-amd64"
      sha256 "53a885bf4a00dd55149f7ec286fc076b61a1012cb1b77e448bb57f33f1e8e5ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
