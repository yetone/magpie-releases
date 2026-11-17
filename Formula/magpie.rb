class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4362/magpie-cli-darwin-arm64"
      sha256 "e14b048f4f2e8a780dcf56a93a674b03c66fda9b7941f8906c9a8ad323aed7ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4362/magpie-cli-darwin-amd64"
      sha256 "32a6735417c94de21004093937b8efb867f60dbace4a9a30fc101f876d111727"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4362/magpie-cli-linux-arm64"
      sha256 "8861b32d90ef749cd36661e782367f78c9040d48520c46a691e40fef8d6566bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4362/magpie-cli-linux-amd64"
      sha256 "ab6f52b46f37a7aea46c3545d9c1ace92348d5072db50b957371b3614f9f1d26"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
