class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4603/magpie-cli-darwin-arm64"
      sha256 "c01303e02f0939a795cbec67f19eb29a87aefb9bc83ebf4dc5f54d6bb011439a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4603/magpie-cli-darwin-amd64"
      sha256 "7eaef5efb8e295d70641ff609a2734252e3df3e5146d8b7ea88f1ca03a9c34b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4603/magpie-cli-linux-arm64"
      sha256 "7699f7ee438af1fbcf62caa9fee31b989fa043156350907167486bba497ec146"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4603/magpie-cli-linux-amd64"
      sha256 "98dbbe4c32ed7e0de257274bb275b1b8bdcb9e6eb25aaf896d0293ba785eb183"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
