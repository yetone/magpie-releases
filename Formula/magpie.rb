class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2359/magpie-cli-darwin-arm64"
      sha256 "8a087db092229782f10863e0a105baf823f57992b8d51dd52b14de1c128f9489"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2359/magpie-cli-darwin-amd64"
      sha256 "1c441c01ccc7a5644c5e3e2ebfe808daad48222dc4c92c05f3915d236c854fd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2359/magpie-cli-linux-arm64"
      sha256 "86797629836a3a95976204c9ed69aad881d409e39f1d09614dd602cbc80aa6b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2359/magpie-cli-linux-amd64"
      sha256 "0198499a0f93d44f3a97f03b012f7375ebf73f24680f6bb4787a83e13e6c1ddc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
