class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2847/magpie-cli-darwin-arm64"
      sha256 "770fce088c90d62677966ad9f8c3c1291c089dc283b1d94c3326fde25b0bc06b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2847/magpie-cli-darwin-amd64"
      sha256 "95bede495af1fb6461e9a1f8326292b33c93201bbcf3d7c82a78ee9e3757d15a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2847/magpie-cli-linux-arm64"
      sha256 "c7cb1e25d012ea51ecd69d17d82fcc7f2a1faab55481030a636e259def232593"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2847/magpie-cli-linux-amd64"
      sha256 "172dbe714466b000a1c564292eff5f5a921f9d114b016e72cf5ac6b84d0658a2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
