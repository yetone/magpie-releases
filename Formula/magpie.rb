class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3101/magpie-cli-darwin-arm64"
      sha256 "01ab313edac7a3ab1a8995ca93c505bf24f4d2f67aa8b3d93b840c9283057881"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3101/magpie-cli-darwin-amd64"
      sha256 "ae1f1c5e5766b97fe3402bce58284ff1e76e0b240b3ff73370911b423f846773"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3101/magpie-cli-linux-arm64"
      sha256 "3ff7f97d1549ea9e90334a427927fb705fbb3ba8f2457e10cf911f689a9fcda2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3101/magpie-cli-linux-amd64"
      sha256 "227142132ec282679b6209f39cd6d9c4b576b4361cc04b2a32c876d8bb77da3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
