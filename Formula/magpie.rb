class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2901/magpie-cli-darwin-arm64"
      sha256 "fe2c036aad7dec9d2ae102f0c0d8c9ee51dbe8b69d4618ddf7b9f0b2fdb38321"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2901/magpie-cli-darwin-amd64"
      sha256 "58e04c1366115a718c0776cab695169c77437f405c228241ca51cbb890af0941"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2901/magpie-cli-linux-arm64"
      sha256 "cd6d19c39f6f5bf9b6a9cf7d41071a015174467ce3cfb06de93c7efc141b3489"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2901/magpie-cli-linux-amd64"
      sha256 "f276057196d56ebce5b221fe2f981cb89731d19781eee1dee4fb032dff16a743"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
