class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2754/magpie-cli-darwin-arm64"
      sha256 "381fe25a0000d3dab385767c5db5f1d7fe91a8a299fedeecd14fa3059a6453ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2754/magpie-cli-darwin-amd64"
      sha256 "c8c5a53afc34d38e38dcf18b6ceb37103fca05d446777be035f0a4e2b13f50f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2754/magpie-cli-linux-arm64"
      sha256 "916d176b5b08b6dc2aebb52672d96b002943024d07c3ec6321bb88709ea13fae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2754/magpie-cli-linux-amd64"
      sha256 "fd73f5164800cca6f353139d8024400f6292646722519379222095437062b28f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
