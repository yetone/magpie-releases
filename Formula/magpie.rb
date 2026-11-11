class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3717/magpie-cli-darwin-arm64"
      sha256 "2b673f32f197732b9eb57e3d37108b25bd5729fbf65ac635a0eb1111d52339bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3717/magpie-cli-darwin-amd64"
      sha256 "680e379e3e03801f510c38e1a6ec7bb6fe1865ca84485f5c626f052210bbdc40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3717/magpie-cli-linux-arm64"
      sha256 "d0319052099432698d02b61b87a47f7fa7b5a9bc037e92d4980dfe63e6b6eb5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3717/magpie-cli-linux-amd64"
      sha256 "f086c81c9d0940447ddf6252e2a1ac52da965abd00252add6bd042631eb539d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
