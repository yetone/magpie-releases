class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4877/magpie-cli-darwin-arm64"
      sha256 "77dd52affbe54733c360759532aac8a3ed3d7b792bcb178fc05540126dabcd12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4877/magpie-cli-darwin-amd64"
      sha256 "461739084317b3c32bd08a8780995f8f3f717fbe6347e7f69624ddfc99dcb756"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4877/magpie-cli-linux-arm64"
      sha256 "d41415d3450dda48c709877494a8a0fb6699e2d6eaaf137fe630887fd71c3ed3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4877/magpie-cli-linux-amd64"
      sha256 "d09f1927988d7c06799aada6fdbb3ebefc87cb178b42c0ee0cdbcfe088d097ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
