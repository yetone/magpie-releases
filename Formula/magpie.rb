class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4063/magpie-cli-darwin-arm64"
      sha256 "137c4ef4f4e2494c938211b081a69e3ed5732a34174f3df9b16ba76e261b9402"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4063/magpie-cli-darwin-amd64"
      sha256 "70e08703869794c08ed46cd0ac8d51dfb39f8336cc464930186b61f774f33c44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4063/magpie-cli-linux-arm64"
      sha256 "eb5ec13fa20ab600aa5223bd60a0048fba2c9ee2b36061c9ddac4c874a51c49f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4063/magpie-cli-linux-amd64"
      sha256 "6932e18575bf35bc6b49330e5055b03e10253ba7fa759303566fd108e5b65906"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
