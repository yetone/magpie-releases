class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3899/magpie-cli-darwin-arm64"
      sha256 "18c62aa067ea340c9ef3cc55a1c5fccb1333e5b7c2de9cb31a621181b49426c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3899/magpie-cli-darwin-amd64"
      sha256 "72f3690f2b28b4fe67dd5179816d3fef2043a9cbbbbb8c5f96b1947e023a9b33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3899/magpie-cli-linux-arm64"
      sha256 "8c5d2d6c0d2407440546f5b58a90c74a593ee4fd01de37f778aabfe2fb43e613"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3899/magpie-cli-linux-amd64"
      sha256 "c0dd5299412a3f17698facf0b942bb364cac534df21abb6fc7089fb9e5d38f4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
