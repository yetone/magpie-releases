class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3812/magpie-cli-darwin-arm64"
      sha256 "e976f46964b3fce617257f261eafc14bb502162600c208cb9a618217119f8887"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3812/magpie-cli-darwin-amd64"
      sha256 "03d550782aaccf8b8fb097a37c7f9493ad8b4e7e151cd7dcbd37d1b13b620351"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3812/magpie-cli-linux-arm64"
      sha256 "e32ddb4b1a03272139cea5cc86aeaf6af3fa3b13d975064fc5468f1f56bafa58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3812/magpie-cli-linux-amd64"
      sha256 "6f5e089fbfed3530d8a9e4e0bd6ca37ef780cde4aa8147a4ae01d5333f674591"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
