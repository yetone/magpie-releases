class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3070/magpie-cli-darwin-arm64"
      sha256 "6b00c154625b5a6908722c740c72d8e9ec06fc81d399ad06333103e5913ae645"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3070/magpie-cli-darwin-amd64"
      sha256 "d68b32250683b3e5106cf032f6313cfdc01c3b870b956e1751c5e838502cb80c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3070/magpie-cli-linux-arm64"
      sha256 "d1946f43d4918e1793d5d36b11b44cd0785327f170015bf982941853078b3867"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3070/magpie-cli-linux-amd64"
      sha256 "67dc35c2a95a31c132efc2426fd669d232ee1f47a9c85e9a61da0963e989cd60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
