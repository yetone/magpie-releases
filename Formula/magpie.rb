class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4769/magpie-cli-darwin-arm64"
      sha256 "43be9ca5b7d6e62a40c98705e1875b1aea1b0576f90f5be1ee4b993dd3989264"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4769/magpie-cli-darwin-amd64"
      sha256 "f38698656153bd604b3f589b372de5c80bf5dfe6f245b5888ca2bef6c4a574d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4769/magpie-cli-linux-arm64"
      sha256 "554e085b097b497cf9e129868d0eb49e7949a39fb12d13d5f36212c70de09086"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4769/magpie-cli-linux-amd64"
      sha256 "b2d8f2098cfc7f1a39ce3ca0ace9a819d08f78ce001d5070c6ef9d251af14617"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
