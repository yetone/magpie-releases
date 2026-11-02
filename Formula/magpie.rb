class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2711/magpie-cli-darwin-arm64"
      sha256 "e3626578ca650f500668cae594af1310cdc7a67836ecfa9b310b18281a9229de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2711/magpie-cli-darwin-amd64"
      sha256 "89e854165e76c413aadcc822a2face5c67265c22b9e926bd4ab5767f848f0d5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2711/magpie-cli-linux-arm64"
      sha256 "70c99d8a79a0010ad69fda279d0a23c0da2be425591d43822f7245bd058e06a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2711/magpie-cli-linux-amd64"
      sha256 "0493ff1768df8878fe5b724872c696a1ef4589b39cdc7b56cc3d78c9733745ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
