class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2343/magpie-cli-darwin-arm64"
      sha256 "886013ca27c648245c56ff938c9b2e51ab646cfc0430940e3808eb5586e24376"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2343/magpie-cli-darwin-amd64"
      sha256 "be1d716d54ae96949436c330ced049b1b0b2746b38f975d7e3bf5b3d0ec9ae04"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2343/magpie-cli-linux-arm64"
      sha256 "0bb447c2d8a319a1cfc4c253b526135d5e405f661de39a86a0381cfae4b7f491"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2343/magpie-cli-linux-amd64"
      sha256 "489323ae00e1364a26b2fa3ab8fbb8b589fa76dd563f8bdb7a7e018b720d2035"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
