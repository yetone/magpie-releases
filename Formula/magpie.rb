class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4983/magpie-cli-darwin-arm64"
      sha256 "bbb2fec31c1e62461a3ce7118a7949ed38d00444ede560437713d7336024b875"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4983/magpie-cli-darwin-amd64"
      sha256 "17eb7c61d5f201a0d986281e9f5d807360f80f00dae217e424ffdfc778ef4622"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4983/magpie-cli-linux-arm64"
      sha256 "f883e1b2323e3ab756d144c15757365b5c41c4fa86402cd8ffe899ff6ddcf91e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4983/magpie-cli-linux-amd64"
      sha256 "3ad448a358795472c71a8c145a352454926936454ea360f4ff2ece8f6460cab9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
