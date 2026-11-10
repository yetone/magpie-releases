class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3651/magpie-cli-darwin-arm64"
      sha256 "092c0effb916d96dd8ff94641d8aacb3fadebc6e8a1986f89da38c9b2dc39c80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3651/magpie-cli-darwin-amd64"
      sha256 "1ab5c30befb045ff712b2f9183221016aac2c4874524c1b381febe18823304ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3651/magpie-cli-linux-arm64"
      sha256 "7932bcd2627a9c4d04ded3004a4c5f3fdbf9aa21343929b5dd5614ddaa790e55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3651/magpie-cli-linux-amd64"
      sha256 "1e5e07844b6d897898b8f78e0e2cf4a7b79de2a1c13b77a64e49b9f8078bed55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
