class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3159/magpie-cli-darwin-arm64"
      sha256 "29c4bc628da9868873f5c7927046983611a82caf567566eaf85c99ed084f71db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3159/magpie-cli-darwin-amd64"
      sha256 "f137919f123810ff8cd0b56edab1e48f7774d0f6d74933c7aa39459e0aadc643"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3159/magpie-cli-linux-arm64"
      sha256 "8dc387276c179a9d3ed2c4a6011258956c9b743397543f1e2541cbb74da2bb8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3159/magpie-cli-linux-amd64"
      sha256 "435eadbea7194bbc6bbb05641eade90257f53cee9ddae26180e6cbfc53014913"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
