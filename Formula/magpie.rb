class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4666/magpie-cli-darwin-arm64"
      sha256 "51266275d5f0f592fbbe0f480ee785764ff32cf469618dc203e58613ee98abe1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4666/magpie-cli-darwin-amd64"
      sha256 "c9aec4ccb71338cf87963404411e4128bfa63c3412ded7a24d11a46dc1298fec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4666/magpie-cli-linux-arm64"
      sha256 "4996e8c1c1fbfb776103eee190220c5c3024dc31bcb014b9db35218858a70835"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4666/magpie-cli-linux-amd64"
      sha256 "7e4c411b566fbaddee72b561ed09a2f445e7c5022ff7a7744960ce00d04b1045"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
