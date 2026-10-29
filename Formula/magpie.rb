class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2037/magpie-cli-darwin-arm64"
      sha256 "48229b1d74791b5a7de484761d9c8f9c00ead69d43db3c31e6e71b37a4f50e92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2037/magpie-cli-darwin-amd64"
      sha256 "3c694daca22a0840c168f51dcc35ff097a84ce92dc48da2025109956376fba49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2037/magpie-cli-linux-arm64"
      sha256 "5c1224ec8798798a36ac5c77752655fd03e1491b1efb750b348152f2fe589a93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2037/magpie-cli-linux-amd64"
      sha256 "7609b7208a498ad6eb1954d16808e316a03597f6e295ba49421611a4ff43d9aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
