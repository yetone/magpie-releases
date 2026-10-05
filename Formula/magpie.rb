class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.978/magpie-cli-darwin-arm64"
      sha256 "bb680be5adad6a07ff249ed71346f2050367cba7395a420fcc24ad5f0eaa270d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.978/magpie-cli-darwin-amd64"
      sha256 "9f9b7e667d000d5f8091b5552a20202b1a7c1ade1d6dc002cee51afcfc82268e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.978/magpie-cli-linux-arm64"
      sha256 "71cf30bb2d971d179e166ffd29de399c39b1261af1b99557fff23abe62bdcff0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.978/magpie-cli-linux-amd64"
      sha256 "1999345f1c1ac21a955770877cfc4ae0a8681fe0162c09c702fdc8e46e0f869f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
