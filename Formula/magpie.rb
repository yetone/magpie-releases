class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1076/magpie-cli-darwin-arm64"
      sha256 "81c9bed3d7745bb345bf09628be2afbbefc2db70732300a7d47456b91a3535cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1076/magpie-cli-darwin-amd64"
      sha256 "0c36c2a8585be9303a142ed52c2f550b3d134f4c1cd36d002cf5b370ef79b147"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1076/magpie-cli-linux-arm64"
      sha256 "b37458459e7ffff5a5ac648169e578460e631507f184640154c20271fd5f3218"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1076/magpie-cli-linux-amd64"
      sha256 "15a1d6c0b4911c1f3a9910d5b987c89d0e7b63c6c165583470003f38a163cbe1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
