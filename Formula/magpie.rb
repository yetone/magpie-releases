class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4979/magpie-cli-darwin-arm64"
      sha256 "4d833d4d392d660ff19db5dbae7666bed99a2933bd7d40f268ae146d45d0a9c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4979/magpie-cli-darwin-amd64"
      sha256 "9f41c175b641af290d471262ab4dc20e51573900a0732c4758351c52e58e9cef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4979/magpie-cli-linux-arm64"
      sha256 "14b986019398ef2fc461bbddac88ad17348ad23bebc52aad75cce209e5fc4a8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4979/magpie-cli-linux-amd64"
      sha256 "53726b3d884e068a97a5354c4c48f7ce2061c93784cf77aaa325ca3088614df7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
