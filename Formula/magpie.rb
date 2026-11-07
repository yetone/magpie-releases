class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3289/magpie-cli-darwin-arm64"
      sha256 "b6293761e780870c88f6af011a86b626f4d3f3bec07f9ec09b9bf6c4f9b01dba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3289/magpie-cli-darwin-amd64"
      sha256 "832daa54e07b5574666f27d0c754f9fc3ccff19646b5df9a0ca9c521454cb10b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3289/magpie-cli-linux-arm64"
      sha256 "c8ce0b7a4a93e8b19f48c1ac237de5486714cc768950652ad627e25aab087233"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3289/magpie-cli-linux-amd64"
      sha256 "e13fd926fd45eb222300917da2c1338a543853b5216b27ede96d8c3f6e3feeb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
