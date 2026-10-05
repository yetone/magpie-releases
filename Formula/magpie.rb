class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.966/magpie-cli-darwin-arm64"
      sha256 "42e0ee74058e33fb79aa19f7f747fe7087e192b12407638a804fe7d14bc22480"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.966/magpie-cli-darwin-amd64"
      sha256 "64cd1dc26311b19e5f146abf6d6451c06c6e93d65eb2cb54e48b32bfd78b5e51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.966/magpie-cli-linux-arm64"
      sha256 "5279965e0ed1651acd96ba653c02af96b168d18ee5abeaec3ea312880490db48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.966/magpie-cli-linux-amd64"
      sha256 "6bc6f8f14566c5cee2adbdbe034f152ff711631051c80c28840511621a1ae91d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
