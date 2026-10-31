class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2394/magpie-cli-darwin-arm64"
      sha256 "4574e3091403a73235c1bd426f2c4b1a838e513acf2a5ac4cb4564b708ce9c3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2394/magpie-cli-darwin-amd64"
      sha256 "8cc9e09078cda3e954c901711044d36ca66176fe8d1acc17be03eac7b75f3ea7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2394/magpie-cli-linux-arm64"
      sha256 "fe9ffaef2a586cee2e0568fc66f753a8df5c6bac2af219a7e56a213d57450cbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2394/magpie-cli-linux-amd64"
      sha256 "b841834c63674617fbe8bb3cb7a153ff3cec943f85673597ff2f169b5e27a084"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
