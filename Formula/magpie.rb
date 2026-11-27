class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4943/magpie-cli-darwin-arm64"
      sha256 "f806ca94876f7ff3ed92fd6e5fe3ea89224c2231b21732c9b4a5b1b5c4f4da6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4943/magpie-cli-darwin-amd64"
      sha256 "5d220d56d5b946cb20cabbcb13e5d863881df3ccb8edf6a9c3ca644fce64e418"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4943/magpie-cli-linux-arm64"
      sha256 "f5e049081694470f59a61dc315d189fb4c2280a9d8c345a09baf227c72cb8563"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4943/magpie-cli-linux-amd64"
      sha256 "a75184a4a1a952996f446a218130d0d2a24730349db4b74d75e0a25330217fda"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
