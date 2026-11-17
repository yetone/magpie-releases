class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4360/magpie-cli-darwin-arm64"
      sha256 "6832529c8a3881a9fac02ee5a61ab40dabdd373f74762e231d4c78ade553977a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4360/magpie-cli-darwin-amd64"
      sha256 "15804045b815957f0bd8231e4229ad6523783afc40e348a93ed722982f6b03b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4360/magpie-cli-linux-arm64"
      sha256 "77ceeaf820641e497f62078251493dd9edefb3bf4c9a475311130c5b641e34df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4360/magpie-cli-linux-amd64"
      sha256 "0be920b193a7cfaeaa6844e0ccadb92396127bbc4098df0503741e5b50dbfe52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
