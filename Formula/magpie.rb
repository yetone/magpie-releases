class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2062/magpie-cli-darwin-arm64"
      sha256 "bc87afdd641a7d8a154d0dd83570934f29b8a480140e922bbbc3fce2135318de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2062/magpie-cli-darwin-amd64"
      sha256 "9347d7ed9663461c2593292a4bcb1fcfb1738ad7765a16ae47f16e99ff2ff152"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2062/magpie-cli-linux-arm64"
      sha256 "c44dfa611b203dc2af9b075933d622b15a890996de2fdd4434d2c265d3e01a64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2062/magpie-cli-linux-amd64"
      sha256 "84698ea1ea97304ca95781fce85277ff2e09ded8e6c38200f7147da3eb3b4084"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
