class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3906/magpie-cli-darwin-arm64"
      sha256 "335b481730c94b346e7637a69e2da1480681a9d5d6b055e920b937aa35c08485"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3906/magpie-cli-darwin-amd64"
      sha256 "39c0a3e6a91352c7e6fff06b0f5ceaa0da7dc8fd6e0638bbd12cfd82fb04c268"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3906/magpie-cli-linux-arm64"
      sha256 "92d17e071a85afdd2da4f36c8487e561f83e8d30cecf5cb4d984d30f98bd99d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3906/magpie-cli-linux-amd64"
      sha256 "4f711fe290c6941a6ba9ec468fa8910f543419311850375c777af3cafff209a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
