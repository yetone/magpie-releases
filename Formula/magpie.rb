class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2223/magpie-cli-darwin-arm64"
      sha256 "4449da6f207f9460888cc8eaf4bee9c96024d5eb480adeb056c0b3ea566a6874"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2223/magpie-cli-darwin-amd64"
      sha256 "2c2de971e8dcb763b13c6af3ad6405739c7fc7d1cf5dd3220b20edc1b87228cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2223/magpie-cli-linux-arm64"
      sha256 "da61d5b4f7c30f5d68e030a272a44c43eba8f65691d5bec721a78d4eb4825c63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2223/magpie-cli-linux-amd64"
      sha256 "9edb25142e34b56d217e0c5e72ca4a30e5350cd9847c859560166d26fdef4638"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
