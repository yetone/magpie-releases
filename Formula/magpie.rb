class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2645/magpie-cli-darwin-arm64"
      sha256 "01a48d1a3e35f4e04c38f4afb59106009196a859751476f96045a2b863b04856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2645/magpie-cli-darwin-amd64"
      sha256 "539c62e91f62eaf52345811b4fe665727c212ec31fc462795f35d7cb376e0e74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2645/magpie-cli-linux-arm64"
      sha256 "535363aabc28d1cee6b179e78880088fbdcdef7fd6671b887295c3d9a8d0016c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2645/magpie-cli-linux-amd64"
      sha256 "a48c30d017a402cea7bc5aa788353914e77d6e961b4c58441e470bd23d9553d8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
