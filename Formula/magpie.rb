class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3304/magpie-cli-darwin-arm64"
      sha256 "d1c049dc7356b7dfe89d8a85e63c68b80a4c4b46b2781cead0319389816d72ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3304/magpie-cli-darwin-amd64"
      sha256 "ac88f2ce1baf3e4180ae762148048161a70da7b70ddb3a76dcadcdcd5e09eea6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3304/magpie-cli-linux-arm64"
      sha256 "8fa3debb85bd09e92559d1e41be459643189706712e5e1c5dbb96367f40a576e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3304/magpie-cli-linux-amd64"
      sha256 "8cc092787ce96053ca067f83256ecd874c71d8cc137b7f3a57e4d47184e07b5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
