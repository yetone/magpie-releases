class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2404/magpie-cli-darwin-arm64"
      sha256 "4d89f1050ce8e61f2d3aa1f4f0b14bdc660a25f67bf55081c359e238b236f205"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2404/magpie-cli-darwin-amd64"
      sha256 "4a7ad79f0948ef10a8b3af421448abc43247f66561a8df8534176089628099cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2404/magpie-cli-linux-arm64"
      sha256 "7adfeb762e4b5d04f8d2007239629312b56b444bbed1335c51fd93156e7d19ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2404/magpie-cli-linux-amd64"
      sha256 "f19f69b0acdc0fce1a868fa23f0c31acfbf2f57fcbd8e9f168ef685ca747e7fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
