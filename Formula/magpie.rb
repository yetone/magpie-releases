class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2329/magpie-cli-darwin-arm64"
      sha256 "8c192f6be2f52e1d3c5577f0076be53a9efc345512635d7b6f7215e8520d221f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2329/magpie-cli-darwin-amd64"
      sha256 "b12082d8c3740a53802741382bab0f0103e15be25c0aa228bf674fd285635166"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2329/magpie-cli-linux-arm64"
      sha256 "db7552b0686174c6969df632dcf31ec049aa4a022b9da89e662c927c09afd0c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2329/magpie-cli-linux-amd64"
      sha256 "81ddfa700b04437bfdff6e4112a64c0c28a21ccef584b3334557ad6179aed947"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
