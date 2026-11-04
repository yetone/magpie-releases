class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2966/magpie-cli-darwin-arm64"
      sha256 "545ca4a21b1ba7741452103d67e803ff3bdbefd9220954e08aa7501d50a20477"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2966/magpie-cli-darwin-amd64"
      sha256 "38d130f375e9b41530de3419ae65cdf6b258f3ff465ffb998fc0e256b5a1c6c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2966/magpie-cli-linux-arm64"
      sha256 "150f1f7926d378d357d72b2fc249131c3fd14d1eb84bca8dbb07924aea21df83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2966/magpie-cli-linux-amd64"
      sha256 "d832a1931677766095aea6a0c512ca34e4ac2182e27bcb9a267ec09e5f0d0784"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
