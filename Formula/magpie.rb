class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2127/magpie-cli-darwin-arm64"
      sha256 "784b99c9a2f9d3b3fb1912a26c905a1bbfc2ff97ccc6420704b6770fecf344ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2127/magpie-cli-darwin-amd64"
      sha256 "a8a8246998c031bdee9b6b9f29da90c3f15b4db09830edc2c4abc5eef6e2fc8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2127/magpie-cli-linux-arm64"
      sha256 "392fb86c188540f931de037f2c50224ea95e5af7d1a5b921111fe0ac759c9eb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2127/magpie-cli-linux-amd64"
      sha256 "a1d524c6b96aad7d0534279434324a8e6ae06016121c0cdb2b8533eb2077b901"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
