class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3068/magpie-cli-darwin-arm64"
      sha256 "d2d17ab0e82d6a4396aaae3b14e372942accdcdc966114d047a4083cd2582e13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3068/magpie-cli-darwin-amd64"
      sha256 "bd64ce4f36fa458ef61cbaf0e23db35fda61e2c3e826e5fdb1f6aafba40fe942"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3068/magpie-cli-linux-arm64"
      sha256 "5c602ae46d3d9c993274fcb47c2996717bb3772a2dfc2824377c2ff0d5819dac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3068/magpie-cli-linux-amd64"
      sha256 "a12a74f205fb82e234d4dfa86f2913e3c5b9e784f43389bb0b4279b1c91b9c84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
