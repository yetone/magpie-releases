class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3351/magpie-cli-darwin-arm64"
      sha256 "b48ffc3de641c8d5c145567e798b1f0005aaaebeeddff22995738578966ff7e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3351/magpie-cli-darwin-amd64"
      sha256 "e7e21341515e26b2c1c4e68db82bc6aa234531f8e644aa616ed6c1f0c7c89144"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3351/magpie-cli-linux-arm64"
      sha256 "0368fa362400060ed1dfd4ae6ab5860a739f907c8d315e74bdde8f9a85e9f380"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3351/magpie-cli-linux-amd64"
      sha256 "27a95fea5c288828cd6d55279310d9af61d2a772a1e99724d208bda0662d57bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
