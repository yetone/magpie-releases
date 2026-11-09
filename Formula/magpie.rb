class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3427/magpie-cli-darwin-arm64"
      sha256 "d83eebeeabe940911ec0117715cdef4c52192f5c23aaebcdfa6d1821b5079cc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3427/magpie-cli-darwin-amd64"
      sha256 "1f15f4fafbb8a78d888e6258f9c797e63e9059ad6fe2d665d2baf143a9f353d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3427/magpie-cli-linux-arm64"
      sha256 "baf1c12fd5e6feadcba3833f89f7d7ed83607484a20678657f4a0e15943890dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3427/magpie-cli-linux-amd64"
      sha256 "fb2a675dd356bb947ace03708d167305156b021dccbf797b6628fa992fe35339"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
