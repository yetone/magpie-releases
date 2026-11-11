class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3751/magpie-cli-darwin-arm64"
      sha256 "3a8379990d77a8d007eb218d747543e51175cbac875b66bc113c8938e2cf3c97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3751/magpie-cli-darwin-amd64"
      sha256 "a42a6b8fed80970a537cc71b3d9dd8f26d133c6a1692cf6bb3ba355311de0257"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3751/magpie-cli-linux-arm64"
      sha256 "04ed5c40dfbc3be86da4f42067fb76f4d640e55f6117a18bf2d5005ec91fd2e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3751/magpie-cli-linux-amd64"
      sha256 "13e1b08191d2d94dac3049803d1fa8cc93a5f6fd4f79a7d8c851902f50b7efb2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
