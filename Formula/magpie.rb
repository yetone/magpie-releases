class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1106/magpie-cli-darwin-arm64"
      sha256 "1f8a7612ce1b8088cd0c021e843e3737110d3aa27b7c728ecdce30a62528931e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1106/magpie-cli-darwin-amd64"
      sha256 "ee78b92719314081d5b815db2c333d20cf06c76d0203ea2621b88a76ae7a2b20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1106/magpie-cli-linux-arm64"
      sha256 "571b50787d179c93b39e7a69d48661d298534d35f33629851ca35336def70633"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1106/magpie-cli-linux-amd64"
      sha256 "fb633418bd2d31f7a7911198d06c2516d8cf4551efbd6aa07aca41f3dc7ad887"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
