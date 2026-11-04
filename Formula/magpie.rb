class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2945/magpie-cli-darwin-arm64"
      sha256 "383e6bed6568f570947ef0e37b067bdaa88fba8d2d4cf459b94888bcb5222db7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2945/magpie-cli-darwin-amd64"
      sha256 "f806ea11a5ef1bb9fb4204101f4c23af3c53c82cb24ec677a9309bc60ba6379a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2945/magpie-cli-linux-arm64"
      sha256 "9df34646a18b556af883f8cf868dbd473b15755ab11b1a887a1c74f589ea6fae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2945/magpie-cli-linux-amd64"
      sha256 "b0c2d99a4194f20a4e09182ce4afe9c3d8be22c936c8f0a1b185a3d2345f7f33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
