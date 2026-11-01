class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2624/magpie-cli-darwin-arm64"
      sha256 "5420694bc753f4ca33bad13679743f6cf80a9b258f2078c82ad3c5c7d0e9d7bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2624/magpie-cli-darwin-amd64"
      sha256 "58cafd5f215c6470da59d5fbb1b888e114be8ebb1a4f9e813242b5e578dffc69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2624/magpie-cli-linux-arm64"
      sha256 "2fe6f465be273b7d324e862ae90b658588a3fa1ce5c0b32701f4929b323d5ca5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2624/magpie-cli-linux-amd64"
      sha256 "1b1061ef7a1346bb2c776829ac515dd6be5a6746b29ed605284b5812c8808076"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
