class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2918/magpie-cli-darwin-arm64"
      sha256 "e75f852fbde082adf61108bfdaf7b7fec498f96b14b7b8c5683f9095f7cd8a2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2918/magpie-cli-darwin-amd64"
      sha256 "669871a9e6d14315c774e4b370260810773d1dfc3e7536705989dbc6c5d24c47"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2918/magpie-cli-linux-arm64"
      sha256 "92d8f14cb08cb1b7664b85fb144020c7542259b22348a30bce8443e2d60d9388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2918/magpie-cli-linux-amd64"
      sha256 "ed4976b9328a9ae4384d5cadcb2973583ac39ed484fe338e05255c6374384365"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
