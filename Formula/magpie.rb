class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3028/magpie-cli-darwin-arm64"
      sha256 "ecd6b5aeef734128c8bf04072b275f4d04badb3baf6282f7870839f0f05e0981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3028/magpie-cli-darwin-amd64"
      sha256 "13fc74a5040e6ddc2cedfd494c505714a763f413aa2713b700ed6a0fda89852d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3028/magpie-cli-linux-arm64"
      sha256 "a9345edab5f3ee2b4467ba45c1d533a94ae84600c00b93e760619a5684a7667a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3028/magpie-cli-linux-amd64"
      sha256 "1506d58324fd051129d9c56a3e8048872306b32c178a178ecaf606fcd5d2671f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
