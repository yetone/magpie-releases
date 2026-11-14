class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4148/magpie-cli-darwin-arm64"
      sha256 "c51f99fa026d713f7931032a2ae11c6bff1f6d54f1d593f8117e059a9b7e8fa4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4148/magpie-cli-darwin-amd64"
      sha256 "a730e3f7dd107f7d63e1692a4717aa9aec517e165b3b2fe34af16a9c1712961c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4148/magpie-cli-linux-arm64"
      sha256 "0486c624df144716d48c99737c00964b11d904873237a6e23966c3c8b9fa9641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4148/magpie-cli-linux-amd64"
      sha256 "45c8904433cb93587e27328c10bd007b2c2079816ab3c8c8cfa67f3a9696fe22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
