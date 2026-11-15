class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4279/magpie-cli-darwin-arm64"
      sha256 "654782839e1923537709894c7fbf70cfdd3ffe38224aaef879634d45cbae46b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4279/magpie-cli-darwin-amd64"
      sha256 "2e1d92e12349e3d5594b9477cbf17d696c58b37536724f990e6511534cf5f752"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4279/magpie-cli-linux-arm64"
      sha256 "f170ad073f84df2365a3dcdf32e398b39db358d741469e94780b43ae5937bf75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4279/magpie-cli-linux-amd64"
      sha256 "5bc360735845d45be22c21aa282e4e053421a1a489309f99e639fa49e5eea31a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
