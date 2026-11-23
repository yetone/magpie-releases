class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4706/magpie-cli-darwin-arm64"
      sha256 "9db49e496831d1ecc19e156de0b145476e1a907d17f86f8b0d8c9b26d2c0d5d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4706/magpie-cli-darwin-amd64"
      sha256 "68707c7734303df7121f48ba20effc43a4432be1c2c1f0381db766ca6178f43c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4706/magpie-cli-linux-arm64"
      sha256 "65a1aceee5055b50834f0ca76c8ab796ce1d45dd49cc431deb1cb1497070e017"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4706/magpie-cli-linux-amd64"
      sha256 "59843f0cef91f40ea1ad7afe987cfd34fd05cda6a59ecae87d554455e0755347"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
