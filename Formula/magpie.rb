class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1084/magpie-cli-darwin-arm64"
      sha256 "672f8c4a0f45666fb9f7f1afea07aadb5b542e16d0d2e45050b0f2b09592e27b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1084/magpie-cli-darwin-amd64"
      sha256 "fe0e865b1a56728ad4784360ece06e78a8374bb2c8d31a35242ac7d7d3fc0dd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1084/magpie-cli-linux-arm64"
      sha256 "94ffa60ef19b1d8365487b452e4b64d0f78861f9caac332298d7193f72618a5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1084/magpie-cli-linux-amd64"
      sha256 "90145a641c7168a786a7b61afe0dc1203a25a3336759d98673d8e6402667797b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
