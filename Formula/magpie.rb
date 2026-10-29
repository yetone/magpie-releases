class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2077/magpie-cli-darwin-arm64"
      sha256 "4dac2dd20a20f2b1d1f7f48ba543f6031ef8d2a8351341dcc7d110f111112630"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2077/magpie-cli-darwin-amd64"
      sha256 "21d9b1a378866604b4edcc15d8592deeadbcc18deb34ecb4fed68e34508c9cea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2077/magpie-cli-linux-arm64"
      sha256 "32fec20573adfebc4bde2965aa58c3bc4c0dc62bc215a9a5ea96ba85265078a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2077/magpie-cli-linux-amd64"
      sha256 "30f83cb792359aaf0062970319198a7f6c2a1407a6f55600c0a416801c252939"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
