class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4008/magpie-cli-darwin-arm64"
      sha256 "31fa40bb13c16ab83030a07ab687467c13467c4142ec425fd591f7619ed765b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4008/magpie-cli-darwin-amd64"
      sha256 "0926f659bce54fedf2cd8ec4c26565bae690da51e656cf536a638a0e3b4fdbf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4008/magpie-cli-linux-arm64"
      sha256 "aa9e7e2077a76426ca6fb2752936cc668d8f93feefb753bc9303cc12d79dbb7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4008/magpie-cli-linux-amd64"
      sha256 "137d57f06b19284e0502d7716311580b76b631fe798444b3851a670bbcfb0103"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
