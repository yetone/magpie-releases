class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1967/magpie-cli-darwin-arm64"
      sha256 "e659c30b1e91c8694dcc409bc89686356ec1bf71052b1b2ce0959acf9a697b9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1967/magpie-cli-darwin-amd64"
      sha256 "171a9428c3f6a80cfb7ef50898bdc5a9e3d4016afb297bdb86636fe17cbd6660"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1967/magpie-cli-linux-arm64"
      sha256 "20cea0f6b3fc49795e796c08f4efed4815303f5dcdbc8ae9df0476ae6520f31c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1967/magpie-cli-linux-amd64"
      sha256 "8a753bd5cc0949acf31a5c0ed21796937b0f36afcb54268c114aa90d76a28757"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
