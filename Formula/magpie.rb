class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2492/magpie-cli-darwin-arm64"
      sha256 "e23388e0985e92fe9e5d83987989e8bed8512721417f5a37ad71600f11908413"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2492/magpie-cli-darwin-amd64"
      sha256 "eeb4d1f803cbdec5695a4c599277ce155e4a611fa10d87c139623ff02028da12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2492/magpie-cli-linux-arm64"
      sha256 "e4e06f300e8d4a246ea2f84f5759b0cfc342217e6c898c08cdfe29886fbeb489"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2492/magpie-cli-linux-amd64"
      sha256 "6f2e3629f332f20ced311804f89348141fa5e3c15fefa77d1d0a10ba5deabb3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
