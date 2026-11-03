class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2805/magpie-cli-darwin-arm64"
      sha256 "df6bef35965c7dc368f0e983b02db5fcf0decf728c8d2a7c7ff2357dc6339b41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2805/magpie-cli-darwin-amd64"
      sha256 "1e03d0030bc76bc1835efdc18688a4bece74bd79cb60e48fc3dbeca998760451"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2805/magpie-cli-linux-arm64"
      sha256 "8e634c072c924b3bec5aa3e427126830503e63280d95eb6d3ffc7ff16f7f515f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2805/magpie-cli-linux-amd64"
      sha256 "23de0c954007f9e3fd2e3a5250b030541e7837bbcae7e91efe215ad22c9e5e4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
