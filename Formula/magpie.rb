class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2774/magpie-cli-darwin-arm64"
      sha256 "da0429a3e74ee0da6c8a794129020dc843911f4a176810a39ee6bac9c0e243af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2774/magpie-cli-darwin-amd64"
      sha256 "4fe67f56ce86ddc0b2e6f3a96146b19fae4b4b0891441527e12d901960f3b672"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2774/magpie-cli-linux-arm64"
      sha256 "a665da63469404b9701fd4cb69ff6f8bf668fac0041efc046f7998fe41ee050c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2774/magpie-cli-linux-amd64"
      sha256 "5d2c58659083e499c6435e5da4ac2337bea3db27a9403ca9408ac59ffae2306a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
