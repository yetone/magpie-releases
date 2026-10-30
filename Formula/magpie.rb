class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2247/magpie-cli-darwin-arm64"
      sha256 "3d1bc8426c2f205e0e490796a83012ae0a61d3d446fd3358bd154158c35d9d20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2247/magpie-cli-darwin-amd64"
      sha256 "87d5590cc06922787a9dfaaf62f50ce01236ebd1c7a65099d20e51b1746ed5c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2247/magpie-cli-linux-arm64"
      sha256 "9d481fd9c13ce55feb8e33d8ed4d8a2af1c4447b88ec73d3e329aa045fcf3531"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2247/magpie-cli-linux-amd64"
      sha256 "a76c68629f0efb1d5b2495c5d85521662534689ee2e30904eeeb4b33831d1343"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
