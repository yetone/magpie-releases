class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2098/magpie-cli-darwin-arm64"
      sha256 "34b566928e0bc74984327f51390aa88fa63653fb3d783c3c6b041c276b9b2f0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2098/magpie-cli-darwin-amd64"
      sha256 "3f6eacef4cf918d40a021e6cb4b3cfc9bcb0bd9539cab3eae1d5143561a11669"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2098/magpie-cli-linux-arm64"
      sha256 "bdbdcda868b8a2dff4aac4f410988c45a40a8d0339647736c902d06933bae3aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2098/magpie-cli-linux-amd64"
      sha256 "5e64a0b09e23d848db827cfc26a5560f6203a78556da43610029a3f24c9dc608"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
