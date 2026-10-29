class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2090/magpie-cli-darwin-arm64"
      sha256 "8b90498c8f5e0a28b4b12d92b09ba2d554940ac6d72d3eee1ad6e9eada0c1368"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2090/magpie-cli-darwin-amd64"
      sha256 "cfe3d4f62de2cc40be2f83722f4cee16abf3a0d036b596ef246fb1d27216119d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2090/magpie-cli-linux-arm64"
      sha256 "02d4c6f01d4250aeaf017682089ac9fe07c499fce9531481083dec1386199002"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2090/magpie-cli-linux-amd64"
      sha256 "cd8c0165735e60e4f4b1e556f14555c037739e7a0639d4845a05fafe25d99887"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
