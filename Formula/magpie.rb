class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3222/magpie-cli-darwin-arm64"
      sha256 "85356ec7e0e596062b21f9c8c43870cfe645d3e408ae260a814c017a69a1b613"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3222/magpie-cli-darwin-amd64"
      sha256 "74084e63673a7248fa1a73471347f8dd9311a34f903753f05046d7bfae238ffe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3222/magpie-cli-linux-arm64"
      sha256 "fa3cf7ee99b221e2013c81a831694a3d7f560d189a9b3105d87c08b0ed2be2ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3222/magpie-cli-linux-amd64"
      sha256 "ff3d410d9302864d646500dba4f3fd328cfd2aed88b63381f3154f032efa6a7b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
