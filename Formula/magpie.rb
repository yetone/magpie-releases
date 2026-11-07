class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3263/magpie-cli-darwin-arm64"
      sha256 "a6d202af146efe7255cb27727e60a02b1a9b923bec61ca5d9b9ff5695f4e453e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3263/magpie-cli-darwin-amd64"
      sha256 "180a49f2fade17bf0b253a290125746817ce7cdef8ef143896ad6f4c22eabc48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3263/magpie-cli-linux-arm64"
      sha256 "073293cee7b888ec33154a50144121bcd2e503413c922f963cd8b2c0d6b96d02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3263/magpie-cli-linux-amd64"
      sha256 "390c6627226a6392c344a2edeaddef404fa4cc7a0ca042679e7e6c48ecef2f4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
