class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2659/magpie-cli-darwin-arm64"
      sha256 "52f16430da1d0f0b4d1eb485ec1e387d32bf50ee123799eeb9c73c8f15bb4c23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2659/magpie-cli-darwin-amd64"
      sha256 "e82488a10204dce99f48b8545a9e10ac55e5d25b9f885f077018f70c21bd59b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2659/magpie-cli-linux-arm64"
      sha256 "b620df1d84753a93e7ce318ee81015284ed070a90ff9b97034ed1a38a4c37f69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2659/magpie-cli-linux-amd64"
      sha256 "f3102e0df12fb90c6bef7ceb878df160d3176724f15c7786c3e457b19c5bc607"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
