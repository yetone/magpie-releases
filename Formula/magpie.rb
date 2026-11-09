class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3467/magpie-cli-darwin-arm64"
      sha256 "ec7e027b0fbaa832501940f342820d1891331d76d2b7fae02c370a9fc022ca1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3467/magpie-cli-darwin-amd64"
      sha256 "7cd0afa08e10934f88f428757d9ba4c1491c8fcf84c3749cacfce78a7eeb1586"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3467/magpie-cli-linux-arm64"
      sha256 "56f33b590c0dd13bd4348a72fd303eeaaca7c29d2c6cdb9827a845cdd393f274"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3467/magpie-cli-linux-amd64"
      sha256 "2132e7a249e8bb7a7e89134d83f273e0dde057b2d20fd4f020725a97b1e53a92"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
