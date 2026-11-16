class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4305/magpie-cli-darwin-arm64"
      sha256 "9ebf91648a9937c639737f8d2c641bfdef443aae33c957f236acd2b3a5cf15c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4305/magpie-cli-darwin-amd64"
      sha256 "a948947b0464937d0db38b71c8be175e273d2558fed6a5c95682d04c5735a873"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4305/magpie-cli-linux-arm64"
      sha256 "6eccbdce29767822022093fa8a2a4cffbcd2383af50b432a8decd4689e34f6a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4305/magpie-cli-linux-amd64"
      sha256 "00b4e5da536171e57c62ac5debb34ccbc3b05f70bf967e9c5aa88b615aa3c237"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
