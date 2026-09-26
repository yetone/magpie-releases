class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.145/magpie-cli-darwin-arm64"
      sha256 "1c7ba5d6ebf1d179c415f76e4cd50909b1e3031b9a692d7edecbcd8a69b58cea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.145/magpie-cli-darwin-amd64"
      sha256 "218df21c6bef3a31a8be33b0d500fec53f82631d4ecdbbf1fb2dbc52b70aa7ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.145/magpie-cli-linux-arm64"
      sha256 "e687ba412d0c27dcb35ea0af7453baeee293d607743403c7e69727b991f3815b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.145/magpie-cli-linux-amd64"
      sha256 "c48258725e4e5de14f2219f3c9b36bd2294576f39db6f8f223074c7ca51a17da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
