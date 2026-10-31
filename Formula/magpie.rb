class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2431/magpie-cli-darwin-arm64"
      sha256 "ee7d36ac1513a30ae5d07b8eb4556008ecf8ecfc1771f7a8bad76377b9012f27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2431/magpie-cli-darwin-amd64"
      sha256 "94804567fea4961129e7cba31f71e7b776f247b880420bbf852e3ef865eea9bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2431/magpie-cli-linux-arm64"
      sha256 "25248b3ecc11086b9ecf518e317f43119bcdea01f066d6957060969243405107"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2431/magpie-cli-linux-amd64"
      sha256 "715be028cf5d1f563b6f0b2a2bc1afdf0aae7fc6d1b8662afe5f7a72d7ad4144"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
