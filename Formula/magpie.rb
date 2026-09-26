class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.131/magpie-cli-darwin-arm64"
      sha256 "d8ccef46d6c2ead1dfcdd2f525b377f481fe710e1762f24c06076807c467ae85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.131/magpie-cli-darwin-amd64"
      sha256 "86cfc29852ff9724af4f9a8d831b2ffad22fc80798b6749213fbb911e8b84512"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.131/magpie-cli-linux-arm64"
      sha256 "38a77c2ca4e651770f903505be609a13334c86e524a0d343961749a7596db67d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.131/magpie-cli-linux-amd64"
      sha256 "83013cfbaa6a86c490e5f5fedc5fb49da3d1ff2d76147b0232845513cefcfbbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
