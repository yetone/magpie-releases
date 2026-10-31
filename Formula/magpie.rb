class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2323/magpie-cli-darwin-arm64"
      sha256 "60e372a76bfd81444136bcea4b05ab766d592009db226d345424f915407e53b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2323/magpie-cli-darwin-amd64"
      sha256 "a9921ecd11c47d824d5a987ff217a5a13a48e17a84ae872acad4c1d52d15ebc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2323/magpie-cli-linux-arm64"
      sha256 "8f80eb0d9a9bba1372904e0ccebd685f8dd5068d8f7ed048311c5c07c5aeabcb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2323/magpie-cli-linux-amd64"
      sha256 "0f032ce7e216c2b054d84ed994d6715fdf623526349406c700d93678598d4e60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
