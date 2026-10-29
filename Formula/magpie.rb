class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1981/magpie-cli-darwin-arm64"
      sha256 "1141ee4424ecb4d713467ba9663baa17d9cfe651e5ac10367cd1f764232bd78d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1981/magpie-cli-darwin-amd64"
      sha256 "b7197c9caa7c7709363a517cdfec8d4c25fe5384a29b4085b9d0e61243c8a8cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1981/magpie-cli-linux-arm64"
      sha256 "b3e8fa25fcba4db5862dc8f59e12fb10cf82f6bf19d2ffd7580283caea17be7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1981/magpie-cli-linux-amd64"
      sha256 "90d5f167de0c075c054cc927c98e0fb31b699c6c8cac8e1a53fb4292f3a2a6fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
