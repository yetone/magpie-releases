class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4137/magpie-cli-darwin-arm64"
      sha256 "26e33f6d6a72f0f872fb0f06578620c24e9dfe8b8b5c983ffa01353cf41fc2f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4137/magpie-cli-darwin-amd64"
      sha256 "08eb63c41749bec5ee4af480f85b48b30a0c89029f411a8028c96fcad25c1094"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4137/magpie-cli-linux-arm64"
      sha256 "ae8a5cef78680575f28d7a175d930d23674d3646d2b57822a29f169e806b48ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4137/magpie-cli-linux-amd64"
      sha256 "da350884d938f1b08cd3f3269c87251827bac31f0d2ddc282b2a5ebd5cd7542d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
