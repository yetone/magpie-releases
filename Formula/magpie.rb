class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3853/magpie-cli-darwin-arm64"
      sha256 "1f9ffd9f4b3a39d9cfd61f7e471957b8965b52b276e0123dc8843bb21e205607"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3853/magpie-cli-darwin-amd64"
      sha256 "a40083bf5bf1b692dd481d6c3bf5fba4aa046f075db1a3b2ff694ac37a0a5743"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3853/magpie-cli-linux-arm64"
      sha256 "cf66b8c12d89987e83883b81ae6fe52669ecc7e39af68df2dd154dd75fbcd1d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3853/magpie-cli-linux-amd64"
      sha256 "b3fb971b95709bfee21b0b01bd566cbfec387ef81401de5043cce30c99d3e392"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
