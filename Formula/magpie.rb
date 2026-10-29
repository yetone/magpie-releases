class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2066/magpie-cli-darwin-arm64"
      sha256 "535ff9e8dc49ffcf2e3afc1821158ffac2ef53ddd3614ee09248afdd69c9a17a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2066/magpie-cli-darwin-amd64"
      sha256 "b50ebf8e109d6ff6990e0c6c049c22800b3f82c2ff6ed26b7fcf1915883b935e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2066/magpie-cli-linux-arm64"
      sha256 "0d9e7a003c47482a2cf4d3dac88e1fde8afd9f56e80624ef3ea7cd1cef39fe8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2066/magpie-cli-linux-amd64"
      sha256 "6e9313954dca5669a95e2877a1a9c19a2d99f06b2c533e591ada27909d2e21de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
