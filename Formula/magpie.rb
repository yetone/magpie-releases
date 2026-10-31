class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2297/magpie-cli-darwin-arm64"
      sha256 "14624e065b307a7ff3ee2aaf8c34e6d4ea9f00e217fa5505ad9a55dc89cbe72d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2297/magpie-cli-darwin-amd64"
      sha256 "d3520571a783995203834fe64d2ed24b3e4c5f4c466b6818afa5b6482cbc4907"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2297/magpie-cli-linux-arm64"
      sha256 "e3f2d6b16c35f9c0b848d2d5181dbe62c342d409e7840fba7762e81f2d84f838"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2297/magpie-cli-linux-amd64"
      sha256 "61e13ffaa649d026ffe596d8cfce4b515806c3d85ee7b773c804a062aa355d3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
