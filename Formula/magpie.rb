class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2886/magpie-cli-darwin-arm64"
      sha256 "5883804c04e3a9460e61b3df921f03cc6b316e27819315d66f3dfb8ec757cb25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2886/magpie-cli-darwin-amd64"
      sha256 "4b40465ee9f8d6151a21a64250be8420409452fa76f701397a7bf797ea387431"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2886/magpie-cli-linux-arm64"
      sha256 "2ab99c72b2e983c6bd3ab974ab189f69761f05828bf46a8d7b6150c613c8a17d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2886/magpie-cli-linux-amd64"
      sha256 "c198890499971565bfaae84596181004c840f63549d3de7925a27da198ac3067"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
