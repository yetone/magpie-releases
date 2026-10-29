class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2071/magpie-cli-darwin-arm64"
      sha256 "6dee5082e481fca0b250f04d391f3575455d299e752cfbeb2ce885340ce35a84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2071/magpie-cli-darwin-amd64"
      sha256 "8659b4150ac2fdc760c0bdcc07f0ab2d8b7e16b90c9d5b0c8417d87e6c642039"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2071/magpie-cli-linux-arm64"
      sha256 "c8a87e35b30cad94f2222710e6553d9950b0c2eeed984f3a1a8d4b6c3d1be5ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2071/magpie-cli-linux-amd64"
      sha256 "4fe9b18c62a9e756eb23492d51becc6271d911bccbcdc8de530f19042bc9bcc7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
