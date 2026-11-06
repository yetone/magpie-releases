class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3181/magpie-cli-darwin-arm64"
      sha256 "3a0c3f7d77aa51f70c2b401ccf749245f83e9ec6445f7460aea4135838b1e67b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3181/magpie-cli-darwin-amd64"
      sha256 "1bc82f533a410bc294c214a84f40622e1ee7d86d03fe53e9c866cbf89fdd02f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3181/magpie-cli-linux-arm64"
      sha256 "84273770781181204ecd92c1824a21b693da400da8d7d2a892ec5466d3367561"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3181/magpie-cli-linux-amd64"
      sha256 "34d246b9bac5a388316f09a5f75769f574fb970345b67f3a89f2f04f5d4bf771"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
