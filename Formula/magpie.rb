class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3497/magpie-cli-darwin-arm64"
      sha256 "418c1049e8843f009fafa8927715de82433d08f0216fec15140ebb542f71cac0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3497/magpie-cli-darwin-amd64"
      sha256 "b40ef7e87c09e00f62c3385962a8b39141b0a8f58cfaa4885df726084dd452e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3497/magpie-cli-linux-arm64"
      sha256 "bf83f92123b93c1d43d9842e67d753cfc0c777af56a9c32960898171e0521f00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3497/magpie-cli-linux-amd64"
      sha256 "1d296abd4add09ede50ccc577b6310717508052b481a7537af849aca7f34cc63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
