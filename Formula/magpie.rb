class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4232/magpie-cli-darwin-arm64"
      sha256 "7b75b8349a1c1132441863e5c4d70618458887e49b67ac902bafc6407f2392ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4232/magpie-cli-darwin-amd64"
      sha256 "a0dc831bdd2028a6c3bd4dacb1a2ed665cbef89b9e1a81f2d4dbd4389e3c35ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4232/magpie-cli-linux-arm64"
      sha256 "7e8104449fca5923be58336945b2d525644fc72d9f570acba8f805a3deb5caef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4232/magpie-cli-linux-amd64"
      sha256 "ad116fbf5a8cea76b7933e8bd9b0e8556dee0837b8f6ec8dd2f0367b59ba052a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
