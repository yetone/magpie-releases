class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4835/magpie-cli-darwin-arm64"
      sha256 "624d58e67035fa89fe9d71c845041e7c7b99b1f4d49d826dffe398315a38c627"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4835/magpie-cli-darwin-amd64"
      sha256 "43f029dbee5a474c1edbff22f14f78dda4b155867a5a2c54cc861333fc91a738"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4835/magpie-cli-linux-arm64"
      sha256 "83ea039742763f7531db7cd1ed6d21241a2bf9b1a44d9d65d4186cabb6702b3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4835/magpie-cli-linux-amd64"
      sha256 "20c3e351b30f64974e7e7f083d0485a3e843dc73f9e1031736693452219bdcf5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
