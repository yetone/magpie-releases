class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.914/magpie-cli-darwin-arm64"
      sha256 "f67b4b579f47aad23d5d4ddcb280087944e38f72a69bd9e817705d5f36ea6f32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.914/magpie-cli-darwin-amd64"
      sha256 "260db99c08234c0542200162ceea4c7842cf6d20e9221e5cb04c25065ee4b789"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.914/magpie-cli-linux-arm64"
      sha256 "84035a058e492dd5fc8534d2db293a556c22e5b327aa9bca4e9610e9c369582e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.914/magpie-cli-linux-amd64"
      sha256 "92cabd305ac773fc3c0dac23bb7076ab90d63aae95a61b120cae4520748546e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
