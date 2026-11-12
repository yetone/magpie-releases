class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3829/magpie-cli-darwin-arm64"
      sha256 "e3d5a84fa2f7c3539670535d181b9405d1439e849d9450ebb6cbbc8cccdf97da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3829/magpie-cli-darwin-amd64"
      sha256 "a44e5074cbcff42d07378f9714750c8e65ee68633b890730e22bfeca34f0b9b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3829/magpie-cli-linux-arm64"
      sha256 "c88e201ccb4c3976013a7863fd6e0ad869c5de72463ad67387c5ee2fdc0332cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3829/magpie-cli-linux-amd64"
      sha256 "d4d1c51d4919c7c2a20c8bc703bc29c8afb4cc0438940347407e4fd4b94cb857"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
