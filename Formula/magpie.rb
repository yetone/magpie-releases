class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.953/magpie-cli-darwin-arm64"
      sha256 "0a6366d3b35cd75fb183c4dbd3ed65337aa44bd204205b2e51def8a0e72309a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.953/magpie-cli-darwin-amd64"
      sha256 "6333661d7ff4f72a7e872630d78f81da0661c923a33f6926a379abefd9954f1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.953/magpie-cli-linux-arm64"
      sha256 "2e30bfd9496e4cc2ea79b7578cff6b39b88987860b51c51de3b671e200f78b46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.953/magpie-cli-linux-amd64"
      sha256 "a06a7f093d544197997b3efbc28188dc05e20cba68d5e10c239ffab9818411bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
