class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3947/magpie-cli-darwin-arm64"
      sha256 "7c9c63163322d65a4daaf3d555355d335fb5e4dad74d4ba585f54dca023e1046"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3947/magpie-cli-darwin-amd64"
      sha256 "6b49a3ec8ee2b49924a6d423e260b729603c6dbb732a9174699ffdb474e29489"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3947/magpie-cli-linux-arm64"
      sha256 "4307ba2ff47374169d5cc530925f12d0b28474fa2a655870575c23d679d8e9dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3947/magpie-cli-linux-amd64"
      sha256 "cb273226329a2ea2c2eb20c3238afd1b07bbbf18aa00c4d79606f2af7e05dcd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
