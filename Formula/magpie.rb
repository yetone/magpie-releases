class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5018/magpie-cli-darwin-arm64"
      sha256 "96576222810e52849e405fe26dd8655bef7e6fe293d8ab2881c5e5716a32bca7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5018/magpie-cli-darwin-amd64"
      sha256 "76d7f68c3715ad7011767513398774af98a0165d3b59cf9447030cee543c1ece"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5018/magpie-cli-linux-arm64"
      sha256 "1d559d34c31a87b9f69e7474f1afb064b8f9633e332b980918b64acc631df767"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5018/magpie-cli-linux-amd64"
      sha256 "5ca358549d89d98c2d492ac294d641dc456dc2b27b1ccbbcbc61603ce1c34d01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
