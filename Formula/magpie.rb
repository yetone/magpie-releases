class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2541/magpie-cli-darwin-arm64"
      sha256 "1b736c83e091b379dff97d2773a9a1399ea4e157296464516480c13198027f4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2541/magpie-cli-darwin-amd64"
      sha256 "d674ecc445215a810a064c3e5334e90958a1782901c20d2b8533c675ff3c4a10"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2541/magpie-cli-linux-arm64"
      sha256 "2dc195bb34681389ba5fee3242eb2711915c38faf70f4281503962549e45bb5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2541/magpie-cli-linux-amd64"
      sha256 "b6b12423803aaf202ca8dfbe5b30e12afc6b33f988a04f850cf26784fee5548e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
