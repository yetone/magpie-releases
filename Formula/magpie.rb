class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.989/magpie-cli-darwin-arm64"
      sha256 "86ebd085b0f882ef7aa96a21e52b8c9f601321a0d06abd206740faa46d993c8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.989/magpie-cli-darwin-amd64"
      sha256 "0a4ba17890c8f2c7cec6c62d6a8088b1ab08b628889f7e8d958983a578c2d1eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.989/magpie-cli-linux-arm64"
      sha256 "7618ba4e2d2e96c7897f4b715e42a0b5f3ba9bf4fa451bccb9b4e69c772123c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.989/magpie-cli-linux-amd64"
      sha256 "d59f9bd57928d0b72fa7d3228842f40afe3a6fbf571e4e417deeb4fe2e671b81"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
