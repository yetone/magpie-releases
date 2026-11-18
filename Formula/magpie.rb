class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4499/magpie-cli-darwin-arm64"
      sha256 "2bbb8799aa1c1a85f9f0bcf0a208d90a77ee46e2069b966d7d364973ffc895d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4499/magpie-cli-darwin-amd64"
      sha256 "cc84e10cfd0964aca4eb420d331a204f0ee609b09e582aa1535befd480dec03f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4499/magpie-cli-linux-arm64"
      sha256 "b917545c13bbdc155e5a8699887275092c5df237532535869644a8eb59fb3494"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4499/magpie-cli-linux-amd64"
      sha256 "596db51e123280ee7ac49cac4e4a239c4ca02d6c1db00de1a6e4dc1c70f9fc96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
