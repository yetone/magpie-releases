class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4306/magpie-cli-darwin-arm64"
      sha256 "7ca2930648cf3cdfa0826aa9b5a1752a21a7dd1aa1a941e42b36d4e2c58d43f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4306/magpie-cli-darwin-amd64"
      sha256 "ac309cc1f4d423cbf8d7bc223c5c0b7f5aee543c3b3ed25e78b531c6587ee4f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4306/magpie-cli-linux-arm64"
      sha256 "89bb72ced23c474586e768373db557e956cb93266cb43e9201f4f9c1fcaf455b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4306/magpie-cli-linux-amd64"
      sha256 "8bcefcea1f1dacf520fbbe708945a39d1f04c0d9f70b7bfe2ab04dd97c0066e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
