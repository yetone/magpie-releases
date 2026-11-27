class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4947/magpie-cli-darwin-arm64"
      sha256 "d159af891f374a08784de32be004848481fadeca2d522a78d69d1ccb8812381c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4947/magpie-cli-darwin-amd64"
      sha256 "86766c56759f17a5aaa77a6f28de7466dbd3b30c5258a1434ba20ce479191dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4947/magpie-cli-linux-arm64"
      sha256 "0e5abec98711444a038c8051581ce6cb5fa6dc4ceab9a6d179b574e5e7223271"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4947/magpie-cli-linux-amd64"
      sha256 "e9b657a0d59ebb92e4ebbf14ef9f2ea737eac100dc868c226e0109e88b61179c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
