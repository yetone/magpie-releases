class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3208/magpie-cli-darwin-arm64"
      sha256 "18740ff6d25c287b78f4b01f59799371faec18bf0b769add5ee2344c03711dc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3208/magpie-cli-darwin-amd64"
      sha256 "367b7821dbd08a06967f117645e3c623d1fd414f3403d112aa5c5e0a69685cb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3208/magpie-cli-linux-arm64"
      sha256 "280aa12f566c2bc8433e9e0e07f49f170c9773f6cd24025b6071ad6bcee0727e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3208/magpie-cli-linux-amd64"
      sha256 "aaa91a942d8ac00c4a9f16d815a929f56d48bb14a50d37218f810e40ec62207a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
