class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4197/magpie-cli-darwin-arm64"
      sha256 "3de3a8a74b3d61ac8481e98aba6943086364d41479cc92de9293ff89ab0c58a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4197/magpie-cli-darwin-amd64"
      sha256 "e4dd7aa8cf77dbaf572fa6facde77a55fd673b0645f94efe5d81816409547b2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4197/magpie-cli-linux-arm64"
      sha256 "e5f9177eb8492a586b19b8d7fdeba1c984b27ecd20100856245056766033e048"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4197/magpie-cli-linux-amd64"
      sha256 "c80c99a1278d7e84e14e36d2d27cd4fd557706e47378dc79a6029f9c066f10e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
