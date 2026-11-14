class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4120/magpie-cli-darwin-arm64"
      sha256 "2e262036e81be26333905d5d8c6581924a1e782deca482ae9f02480984b90fee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4120/magpie-cli-darwin-amd64"
      sha256 "e5215513736ff7b58956cf45b9d44eaf9ba9656203bd7cac3d05d555321fd1b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4120/magpie-cli-linux-arm64"
      sha256 "18e4a24c060ee8749238fd3a636c85b3ec24345e41b33b7c3d80a47cca1b7641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4120/magpie-cli-linux-amd64"
      sha256 "963380aaf45b724d97a76fa1587198666a9e7ce2b4926d55cbfd2538860ecc65"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
