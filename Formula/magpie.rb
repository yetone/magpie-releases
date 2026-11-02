class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2766/magpie-cli-darwin-arm64"
      sha256 "0650f77e746841c506b686e5bcd0e5178d446518985788a36f6ab9a686a86069"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2766/magpie-cli-darwin-amd64"
      sha256 "eff0a483094f72b5badd54a4f20afd83af86fcfb21bf83687136029408a7ad3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2766/magpie-cli-linux-arm64"
      sha256 "485c25db3b1f72e73cb253489470b2c6acdb6f5dd95af27e3f74a2765716e357"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2766/magpie-cli-linux-amd64"
      sha256 "2979188865fe7144a22a2668ad98eb535fdc01b5697ffa291a2d02d9e53d8978"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
