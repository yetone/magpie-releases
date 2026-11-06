class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3173/magpie-cli-darwin-arm64"
      sha256 "8ed69b0a861caaa50d242b142076264e444818c6f12c594568ae8a2c38a2c674"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3173/magpie-cli-darwin-amd64"
      sha256 "a2795460fdb1d5105b9eab9edb5d927e4fb6629dee854a32382bbbf9618922fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3173/magpie-cli-linux-arm64"
      sha256 "9f06a555f710665caf923be26bb65d236f7b7d477da140c1aa2000b25a533894"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3173/magpie-cli-linux-amd64"
      sha256 "8cb5012abb557dcf61fbe97a376e1584c77a0488cbc6fb3133e4d13184a3a9b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
