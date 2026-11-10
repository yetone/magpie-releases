class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3631/magpie-cli-darwin-arm64"
      sha256 "17bfb4125161432497968f2f18bd86641a3f673d8a37093448b002c0ee554b68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3631/magpie-cli-darwin-amd64"
      sha256 "cf0da12c48892663c27ba287102cba7b9d56c33ef020b6495e7b648d2f8dcf3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3631/magpie-cli-linux-arm64"
      sha256 "5394b31ca6fe23c56d17a50c4ae208b8cb8bee0832bbfd9feb80d39b79de5ab6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3631/magpie-cli-linux-amd64"
      sha256 "48166e68b8720bc8c3e1cda86d04cbc753a597650c30ab80144f936f731b0091"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
