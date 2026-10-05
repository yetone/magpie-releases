class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1029/magpie-cli-darwin-arm64"
      sha256 "26a0e9ff4e655cc183ece503abadbb50b4a2a621a7263ccf23ccc4709a19f6c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1029/magpie-cli-darwin-amd64"
      sha256 "f629dd85f8f802dee87b1260781e92ac3428c7e48ce366fd8c2636f4a6a05dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1029/magpie-cli-linux-arm64"
      sha256 "edb7efd9ae0afa6b64d9ec3ad80d626978155ab52022c9702a24a2c0d792d561"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1029/magpie-cli-linux-amd64"
      sha256 "a2d4f418d951ea7947c673c5085b599ae3300d83dca7e1da8b7c5027f56b72fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
