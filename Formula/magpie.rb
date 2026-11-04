class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2997/magpie-cli-darwin-arm64"
      sha256 "46aa5f319f6f3339e59dad8292de091ec5d8e2bb77dc74afe3ddf51c3bee632f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2997/magpie-cli-darwin-amd64"
      sha256 "e8c9bf861492e42cf0f78ba744473a3a7e6c901fef283d27b4658508e2e195a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2997/magpie-cli-linux-arm64"
      sha256 "b94030bd04afdb2d265c0f387b67555712b5176d0673862812d04e677fef0ed0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2997/magpie-cli-linux-amd64"
      sha256 "fd7d37283af5fd072338e5eaf9ea6b49089c4e1a27ba695f76341fc712e15d1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
