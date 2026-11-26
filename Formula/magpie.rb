class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4839/magpie-cli-darwin-arm64"
      sha256 "9b3b1731c41aa01fcb5b66e07820e327f710301fdc0697df5c66bcc67bba365a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4839/magpie-cli-darwin-amd64"
      sha256 "270b494e4bf0fba7d154540d6e6af00968ed6326182f8d42b76f35429b841603"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4839/magpie-cli-linux-arm64"
      sha256 "c8f961f42eefc595a0bde5cd5d69e8ac0bccc40aa43f703136c65c9847b9e6a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4839/magpie-cli-linux-amd64"
      sha256 "db6b29345057e0122e77f7a1fe874b9d372817f1fd0ee728d00e4f1bd45f39ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
