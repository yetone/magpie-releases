class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4268/magpie-cli-darwin-arm64"
      sha256 "ae431785272bca720092b50bd6e5c8eec5a40aa21dbbf5a2387a60fbd97388fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4268/magpie-cli-darwin-amd64"
      sha256 "6bce4bca9933983c2200a00910d04ebce6f6c7867e021c81e1d39575bfec06ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4268/magpie-cli-linux-arm64"
      sha256 "81a861090f84a3d56156d625ec61b4184c6a582156b4ba0ae6d0ee3f653a0f7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4268/magpie-cli-linux-amd64"
      sha256 "27b3a60bf9fea365925e7709158d52bf24fcd8ab186f26ad288939ef2d689f19"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
