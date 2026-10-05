class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.994/magpie-cli-darwin-arm64"
      sha256 "3b6ce2037a8dcffc8074022354ea3f7fb0e26054bb49b58440e7e51dda3d3cc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.994/magpie-cli-darwin-amd64"
      sha256 "9cf518c4e6d7f78ac412592de1885f91db3c9a1f0fa691c11b98a3e9a89ed673"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.994/magpie-cli-linux-arm64"
      sha256 "0db78b440ab02837e4383b7cdc50233fba7bfbce10d557da20bac3d51a3d9b07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.994/magpie-cli-linux-amd64"
      sha256 "8b9f8ff388ec0d6567dfb664b3772b3dbfcc5f31a4a4fd76b268736470484860"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
