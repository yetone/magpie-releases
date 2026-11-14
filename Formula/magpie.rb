class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4196/magpie-cli-darwin-arm64"
      sha256 "54e14d9977e4650ee272720761954631a8c99ca7684c4055c5340b2b0aecba85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4196/magpie-cli-darwin-amd64"
      sha256 "9aaa0c3f8afab52af520e41635e83c9de3250f11e13fe420a55cfe156eed0afa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4196/magpie-cli-linux-arm64"
      sha256 "858dc0cac8f787cbc3eafdd352d1e036d2b9782784ae14a653bdb3ec87488b37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4196/magpie-cli-linux-amd64"
      sha256 "41c3d6ebd0d56441910aadb61b65be3d333f27e614de1a626677593bc42e12a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
