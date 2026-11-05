class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3022/magpie-cli-darwin-arm64"
      sha256 "e71dd7262dd8392a91bdeeccbf43201b80f8f4cb304805939a19c3e8bfa4e11b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3022/magpie-cli-darwin-amd64"
      sha256 "185b3e80bc54317b39cc8d029000db48dffb9192cec8886df82a91c20a146265"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3022/magpie-cli-linux-arm64"
      sha256 "33f31b83251766035ae4ffcba79c0be998f6fa62a9d217a4d5235986439d8879"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3022/magpie-cli-linux-amd64"
      sha256 "57ce7c57c0fce7b0c06568eafc492a7383aeac8f6a62680fc77b5e687ad4e5ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
