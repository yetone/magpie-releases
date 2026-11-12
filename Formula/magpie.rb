class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3819/magpie-cli-darwin-arm64"
      sha256 "3bab23ee658d6a0252f87c5f751fff8e80705ee87acfb1bd5ae6d826db3e1c46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3819/magpie-cli-darwin-amd64"
      sha256 "92ba9ac68000f3e2d4068213761b270f4cc566176fad999db42e4bf51a3a2af2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3819/magpie-cli-linux-arm64"
      sha256 "7b5f57d6ee01836b82baf974f09cbbfd6f8a02ba3e4ef8f8a2ea6849cd8e18aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3819/magpie-cli-linux-amd64"
      sha256 "24823f7d55c293791be7542c87fd43b708353f6ebad199f9d1b06a0a7ab1db1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
