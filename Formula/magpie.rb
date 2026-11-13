class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4010/magpie-cli-darwin-arm64"
      sha256 "984c83a9304793562760a2dfcfacd964f8837256d6dcc1b1754ef8b83b768404"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4010/magpie-cli-darwin-amd64"
      sha256 "95dc164f9c033f421a1f0634d17086ecf11cde0bc888ff990da17eeaf31e30c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4010/magpie-cli-linux-arm64"
      sha256 "6c64e6f6309a783858c0d19be31f45097e84d4a6bb3f453cdc2d5b5c4773929a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4010/magpie-cli-linux-amd64"
      sha256 "1e0a5797b3dcc0f4c6318b7999954996f879722a51fcf7e6003ea28ca42435d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
