class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2861/magpie-cli-darwin-arm64"
      sha256 "9b0e30d03ea46032e6f85cf09d57430a470db7e7fedc8157791f71b1a5005a06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2861/magpie-cli-darwin-amd64"
      sha256 "1fa039f582b691a40daa2ba9bb32c1f4cbac6579ab981e1aabc3cd3bfbf5b363"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2861/magpie-cli-linux-arm64"
      sha256 "464c4ec84f35bcb430f2bb4ed21660f31475577629f1e5ad974d4a9f9e1d31c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2861/magpie-cli-linux-amd64"
      sha256 "7a3ad4ca9a84af9ffb624b5b953a954edc0d026e1d582a3bba0302317eb76afb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
