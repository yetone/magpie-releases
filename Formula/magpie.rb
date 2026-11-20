class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4574/magpie-cli-darwin-arm64"
      sha256 "52100d7d3f859c5ff3e0cb995ca77f927f47da221f251aad63d0db90431d65ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4574/magpie-cli-darwin-amd64"
      sha256 "a93b559940acb7219f0ffbdc8baa96ba3e61994528df0a60cc5f840a564d82a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4574/magpie-cli-linux-arm64"
      sha256 "373cf30c9ad9af2dda25e38f1082b082ae48ebdac5733812c2d08549aa2ba215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4574/magpie-cli-linux-amd64"
      sha256 "789b0e61b8ca044193fb5ea7e5e370a61422308a6b15823a14f34bb00ba83aed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
