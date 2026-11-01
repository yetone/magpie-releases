class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2604/magpie-cli-darwin-arm64"
      sha256 "cb3660767c0a97ef24615744df4a4a0acea8f746f9a7f76406a1f0311b2d28a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2604/magpie-cli-darwin-amd64"
      sha256 "90039f0a1e60d2096d44f0447b2b7c68f0cb093824edbbdaf11143d1de2131b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2604/magpie-cli-linux-arm64"
      sha256 "60ada640a9514e2c9121eaaf568ae705056f91cb91207ac8e0a3ff867f4b2c6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2604/magpie-cli-linux-amd64"
      sha256 "74ffd9eb2d58d00d6a55cfe0a8338cd61637347a3018d6ca96f57a338aabc2ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
