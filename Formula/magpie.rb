class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2703/magpie-cli-darwin-arm64"
      sha256 "50e012a3ea41f6b449c1a891a6f69b8a1a95281766f6965bbbf8b02fa861d4cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2703/magpie-cli-darwin-amd64"
      sha256 "e3b5ca4628662880acce22c8113003bf6ef28245fe9e18e0307d932b19b9c4a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2703/magpie-cli-linux-arm64"
      sha256 "ae309dbc02dc7ce6bfe8d4b8665a68bfebf1e585132d5dbf4a934db872c09afa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2703/magpie-cli-linux-amd64"
      sha256 "3785b3e6857f44edd9f695a5afed639ce4a15221b79bac9f43e9d44d05bd5581"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
