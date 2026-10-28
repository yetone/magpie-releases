class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1840/magpie-cli-darwin-arm64"
      sha256 "63515a059a0d4f0474a92ef4e00a469d65b6ed25725c530d298ab43531a9edb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1840/magpie-cli-darwin-amd64"
      sha256 "b4e324bd983c075479ffcff4f94e812da652d0211cbeea8464b889fa1c0301df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1840/magpie-cli-linux-arm64"
      sha256 "a3badcc20d3d92612fce1907f0de6686f92720abcf65ee1136b3ad748ec9eb61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1840/magpie-cli-linux-amd64"
      sha256 "bfd95e80c3588194c3cf30738e3270a961c3487d73833309ebb00b444f83133c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
