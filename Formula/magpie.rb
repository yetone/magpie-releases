class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2248/magpie-cli-darwin-arm64"
      sha256 "2e3842591a767d0b7610956e02b815ee356366356280688348ca65353872b360"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2248/magpie-cli-darwin-amd64"
      sha256 "c77850d735031cc8b9d540dfb2f27ccd3c9ea269205210aecb37b81fdc04e400"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2248/magpie-cli-linux-arm64"
      sha256 "d2c676fc02707eadcda5cd1e7475423bd8bb2f19fa20a3b4f9fd1a5994dca6c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2248/magpie-cli-linux-amd64"
      sha256 "d6fb53daa93c8209dd425d8845e5f902d9af5af5a7e3f412faae5539d92c9385"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
