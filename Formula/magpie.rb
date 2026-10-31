class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2350/magpie-cli-darwin-arm64"
      sha256 "94e6b4d21666f73849e7db5d6d4b540250f903e8d81545700ba462b03dda5a82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2350/magpie-cli-darwin-amd64"
      sha256 "19e2f3850380e0346cd7885eb25b7e1300b6e4d8ffc0d490cdc0fdf6ff0077e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2350/magpie-cli-linux-arm64"
      sha256 "56c5ac26dab988f6ea5ea202dd53b7f4b12d7f9ab35788836a66abf89a9bb310"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2350/magpie-cli-linux-amd64"
      sha256 "042b2fefd4f42acee968aa93d7ac49421181e6af81cd7e2b2f063335b7dc8449"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
