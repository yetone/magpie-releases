class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2637/magpie-cli-darwin-arm64"
      sha256 "6eb1a2d90796429d58e7d9690c1a0f7c32778e1067bef5d61de29f77e015e2ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2637/magpie-cli-darwin-amd64"
      sha256 "f4bf1946e7203b2737cb3add2af7c7ada920687639aebf4e15bababe3bcba391"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2637/magpie-cli-linux-arm64"
      sha256 "250c0ac268d0c014526b658a27ec96950c077d767d155e69236e927bebe1e251"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2637/magpie-cli-linux-amd64"
      sha256 "d5af72f7fb741b6f0b32321d8340ed97df6698582bd58a8e126215ed7bb57b45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
