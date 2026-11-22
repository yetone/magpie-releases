class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4671/magpie-cli-darwin-arm64"
      sha256 "278b5a7dcdbf88986d3ef1c7f58861695c56e8cdeef454c99925941abb635c38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4671/magpie-cli-darwin-amd64"
      sha256 "ee70aa6e689678e92f7dc2ab014f76fb39368bda27d78b45db0630f03f0aee91"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4671/magpie-cli-linux-arm64"
      sha256 "d2d526a2cdb95cfe24936a58002ec0b427091a56b37ef2f03f845abb6d2af396"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4671/magpie-cli-linux-amd64"
      sha256 "c15edfdba8d33c34ae591133e13d1e6e5c2ffdc3320da85acff29ffef1eeaeff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
