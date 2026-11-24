class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4776/magpie-cli-darwin-arm64"
      sha256 "ec95acd818e3cd47675ad3300cb8d5757898fd851e40a95708c08dddac4fe195"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4776/magpie-cli-darwin-amd64"
      sha256 "10229e6b957446789fb781966f8610702bc67387e2d268c2b71a663ec4fce224"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4776/magpie-cli-linux-arm64"
      sha256 "999230f8b233384d11e1066556e62b71ceee63e040f4a409966641590aa6833f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4776/magpie-cli-linux-amd64"
      sha256 "4f0dc1cca9ed1875c2aa62f6e09a2a9b48755f91db7d33aad23ee6ecdf3a3a9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
