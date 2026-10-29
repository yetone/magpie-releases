class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2002/magpie-cli-darwin-arm64"
      sha256 "9dd129d0b49817a27b6c9f0776e66556a9b35d196406527509fd332f5a4841cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2002/magpie-cli-darwin-amd64"
      sha256 "a31a6e089da7106abd5c07babe187701f3e0f164574e9c4f7d5de3c23b2dfc9e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2002/magpie-cli-linux-arm64"
      sha256 "42cb5520cc0baddd0e80a8058e4b92b3d5e9b7c45c15c4d1b1df21440123634b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2002/magpie-cli-linux-amd64"
      sha256 "b6922ca25d01117264fedfd4f6645b045de1ececf3d75aa489a07f32be6d5460"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
