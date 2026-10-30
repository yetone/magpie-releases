class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2154/magpie-cli-darwin-arm64"
      sha256 "8997a7fd79729f8243aa9961cbff222901c17853b9737ee47c7c724c0e5bbcc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2154/magpie-cli-darwin-amd64"
      sha256 "e92ab4f9626351e84170e9adecb69fd94ac8d9c7ca3f4d5f3c84f24eb0e1eec5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2154/magpie-cli-linux-arm64"
      sha256 "8ec38a13eb933274504257cca5806d31810b923a443fb85f22dd557a4ca935fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2154/magpie-cli-linux-amd64"
      sha256 "49e2b99bb6622dbf1fc33cdc760b08b8b5b7d524750fc66ed06a6666c37b5669"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
