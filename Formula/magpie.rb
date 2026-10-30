class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2239/magpie-cli-darwin-arm64"
      sha256 "24207c8022284b4e025ea3230d66bcf08789e75a5a4671fbe88371fca2789756"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2239/magpie-cli-darwin-amd64"
      sha256 "cee7cbb34c6527e32c28969ab5db712f15d0c6ac78098121d42533414fe7370a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2239/magpie-cli-linux-arm64"
      sha256 "672d1f0058b95546a25584d4d7eb3c2abb89ae5eb4b823db06dc7fc0b3616905"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2239/magpie-cli-linux-amd64"
      sha256 "176ecae557298b9360aa997fb470a82991f2b805ab7ebf3d87474160909a31e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
