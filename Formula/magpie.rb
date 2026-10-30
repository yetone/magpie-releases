class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2217/magpie-cli-darwin-arm64"
      sha256 "7bcba83e3cec1ee130834a989debc9bd5df56cd35dcc95d6d422ec2d0980583b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2217/magpie-cli-darwin-amd64"
      sha256 "722c9172a578cccbbc38b03d8ab2fc9bfa58b14d839f95f1281667e1c2e2d49b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2217/magpie-cli-linux-arm64"
      sha256 "726cd81e8e02d0eeb6154097e816c2ff157b3cbe06f3dda59f100cd3d1c2c33b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2217/magpie-cli-linux-amd64"
      sha256 "bec531fd8c7b824ab0b5a0da3777872d057543b8199b8112673872056c277fd2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
