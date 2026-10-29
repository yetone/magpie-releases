class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2104/magpie-cli-darwin-arm64"
      sha256 "105a6aac1e6b0234873f0689997cc2b8aaefaa3127a2c24abcd2ad5fbdeeab03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2104/magpie-cli-darwin-amd64"
      sha256 "cef2ff0bbd8b90715d7795a4e17f9a2ceb006175d60885d72a8fa7e19fb2d7c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2104/magpie-cli-linux-arm64"
      sha256 "ba79b8124bf5ac675fd9b24a78d78629f2ec2dacfe0ace031fc1b6ee3697c2bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2104/magpie-cli-linux-amd64"
      sha256 "a6ca4da24ec4d894fade39bb015ecef700a653f8b4935a47ccd7a68eaebd30a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
