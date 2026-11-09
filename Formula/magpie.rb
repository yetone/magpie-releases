class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3409/magpie-cli-darwin-arm64"
      sha256 "4989489ce1c38bcc9fe56395fe282f35f5497bf066a554cf6b276dca9e6aed2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3409/magpie-cli-darwin-amd64"
      sha256 "129d6cf60d8553a0805b2a41e07f5ba3f88459e12a5cebd9486a88fd66c3946e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3409/magpie-cli-linux-arm64"
      sha256 "932e4e56506a2c031f389b8ca918cd342814645329fb428608e1b80ff29d7f21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3409/magpie-cli-linux-amd64"
      sha256 "c5d84fad63773297c117289a4c69fd661c2f14ec54613f2bfcc956d42d1fdf27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
