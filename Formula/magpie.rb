class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4469/magpie-cli-darwin-arm64"
      sha256 "43735ba422d2ed0316f13d31ee37dbb17486dc1ec8dc5467050e915e2297c855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4469/magpie-cli-darwin-amd64"
      sha256 "85ed49dcf21e44a807f319f895f41794ee68510071ead5e44f3647061110e1ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4469/magpie-cli-linux-arm64"
      sha256 "aa7b540a8e08d63098c3bc9c3360386e40ac6eea03d5d8ca59b2e46f3f17d6d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4469/magpie-cli-linux-amd64"
      sha256 "fd5a50f94f717c6b873d358db5f6f34d3b59185250a79febf02e8a5cfe562b12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
