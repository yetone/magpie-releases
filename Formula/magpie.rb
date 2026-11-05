class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3016/magpie-cli-darwin-arm64"
      sha256 "75c2bd6ba6ebe77ddbf3f7fef78adef87d14674fc9a3be218c91c59fa11e440c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3016/magpie-cli-darwin-amd64"
      sha256 "3aba6e8271bea4d3c0eb355b5b145c86021f01cd77ee126ba4e868a7df463b28"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3016/magpie-cli-linux-arm64"
      sha256 "9195ac195b48265c167bbd91b2a6209e4a853c68e7c5500de5f40351c95953a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3016/magpie-cli-linux-amd64"
      sha256 "9176e45f5e84b162969988d837605db35748300b6837407aa035a810e654d928"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
