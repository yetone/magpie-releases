class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3383/magpie-cli-darwin-arm64"
      sha256 "bc981889b5e004fae72d4749417c5e2721b2467e8f04bace02695458eecfd947"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3383/magpie-cli-darwin-amd64"
      sha256 "92d1eae29ee00b29cbdb39c2c0cdbf0079bea426606882e661886a91c4a362d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3383/magpie-cli-linux-arm64"
      sha256 "a32556092ae85cdf506f8986d34befe6baff80c3361a145d9b90cb02e61a5829"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3383/magpie-cli-linux-amd64"
      sha256 "e7f8496744ba7d046f18970fffa8ac177298509dfeab2e732c5a46204c1cbb2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
