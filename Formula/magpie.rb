class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2438/magpie-cli-darwin-arm64"
      sha256 "3e79bbdba9a4e6dec042555f66ac02a9a9666e8f170a0570e6ee65a9ad59c8fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2438/magpie-cli-darwin-amd64"
      sha256 "0d406aed7a482e4914de3f7279b00b534ec8f8350de1c02808b7164e3bfe1d82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2438/magpie-cli-linux-arm64"
      sha256 "1b9f62d3ee6a7e24976a76ffda2d6bbe1e366616e0861c76a79cc7e9f3491a6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2438/magpie-cli-linux-amd64"
      sha256 "7a8c568338637f500531969c2388dce68ae21806be5c77ba7cf2a8b9c9b3f220"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
