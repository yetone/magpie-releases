class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2046/magpie-cli-darwin-arm64"
      sha256 "05c6d5e3395ce31c39fe05c00081d09c1ac194cc5fa77474d21aea9b9cc7cd20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2046/magpie-cli-darwin-amd64"
      sha256 "597f4d861fbbb6d03aa28a759fd499626ebf6e4a668cdb4e786f3ad6fde76ce0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2046/magpie-cli-linux-arm64"
      sha256 "2d8bf0c30a442792b62675de14842bd607466f28262d49648f23ea954a5874fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2046/magpie-cli-linux-amd64"
      sha256 "251a5fbbb045825ba1083ce70ae706fb8d790ad1842726facf7f289e4d0a0186"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
