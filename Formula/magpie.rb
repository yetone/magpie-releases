class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2054/magpie-cli-darwin-arm64"
      sha256 "24fea921fb4539da73e9d9d5da4cc14eee1185766081d4adf0418b7117af2749"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2054/magpie-cli-darwin-amd64"
      sha256 "b42506e01d4444c02193144c288392d1333b3dbd4df4c760cf41c7e2e8622a78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2054/magpie-cli-linux-arm64"
      sha256 "f9696e662afdff7376df0605b4e408c7fb5fe06c3c4dca2066c53ddfa0abbeb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2054/magpie-cli-linux-amd64"
      sha256 "e3a5c3cb691919a2d331c41b2287b18048078d19a6d6329c2f4958075d7a5201"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
