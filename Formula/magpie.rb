class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3037/magpie-cli-darwin-arm64"
      sha256 "7f22f7281e6b9683faa9563249b30ae322c66e3ed5cc830fb31dbb3a2ff0edb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3037/magpie-cli-darwin-amd64"
      sha256 "e62607e7d2b951b9487715df5d300028ea730a9b037a86d56ad9837f81a4f140"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3037/magpie-cli-linux-arm64"
      sha256 "5ae4f52e2e390d53369be1e07d59408b6eca6986f249cd4a0accfdc4da148ffc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3037/magpie-cli-linux-amd64"
      sha256 "6d9d2ef895eb61602e819d935b4d6026e506f3e1d22e192ead6012e16166cfff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
