class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4786/magpie-cli-darwin-arm64"
      sha256 "2f9407dc4064831a4c829d2c5697f75f8fc03f6cf113f147f4ac1f048635aa7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4786/magpie-cli-darwin-amd64"
      sha256 "f75128ffebf49025f5c1c55920b4f435cff7bae2d4a7abf58295160099f1d806"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4786/magpie-cli-linux-arm64"
      sha256 "a8c597e71ef1127aedf027c4c4f9ecc3c393d33fba8b1bc2f5ffa44e9854508c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4786/magpie-cli-linux-amd64"
      sha256 "3cc51002fdb3a48b8ce1b436244bfde43e57100594a7026142f1f493d031b337"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
