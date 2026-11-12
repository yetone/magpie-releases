class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3871/magpie-cli-darwin-arm64"
      sha256 "2284257afc5c5c32583b4d158df2fafb6839c828ed5f68555ec045ae8187ab49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3871/magpie-cli-darwin-amd64"
      sha256 "7dcf0cb5a0c619909d9d3a3298dd2bbac12a3adea2aaaa7ecf6a94d0f6d0a63e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3871/magpie-cli-linux-arm64"
      sha256 "95ce589f7cf1b6e518fdd1d740a6d8100ed99b51d53893e4457302ad36bca5e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3871/magpie-cli-linux-amd64"
      sha256 "d1aa2cdea144636aef21d3e4692138ec47fe7e95ca6bd29de4fad5984811ebf8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
