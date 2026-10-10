class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1154/magpie-cli-darwin-arm64"
      sha256 "47ca2ba45fde42801ec80785f96655d245a00396699d7601439f33fb4a5fe92d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1154/magpie-cli-darwin-amd64"
      sha256 "084d775349b9d85fe85c1dce7fa7fbfbcfeee37c4820c1c17c6ff250dc7c0366"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1154/magpie-cli-linux-arm64"
      sha256 "47a9535fd73ec675396cecab4cf014e1a4be72bf49212f72513c5633e3ac0cf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1154/magpie-cli-linux-amd64"
      sha256 "0779f7466da4323c579d04317b3525c217b8d5d39cbedad7e873bdf07a0799ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
