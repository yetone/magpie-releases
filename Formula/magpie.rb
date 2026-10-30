class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2202/magpie-cli-darwin-arm64"
      sha256 "bdd0ee0e24f50649c300fd829561cc28caeec1fd7423201e2ac8239be9dda2f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2202/magpie-cli-darwin-amd64"
      sha256 "442926ab2aa2156936dcfc83eb167d7f3318bd4207528b3d3f755ab9491c1820"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2202/magpie-cli-linux-arm64"
      sha256 "eb79ed59b25d99bb58fb1be569cb4a856716e84143b842cef7818ceddb157869"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2202/magpie-cli-linux-amd64"
      sha256 "b73904c0a6766ab057d66369e2510a3df7277de376ac964084d35d2288066c85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
