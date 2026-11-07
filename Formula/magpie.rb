class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3248/magpie-cli-darwin-arm64"
      sha256 "9d03e8963d81284e44c0468d5ddbdbcd5e2307d7fd04e2242e33f447c329de2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3248/magpie-cli-darwin-amd64"
      sha256 "e9ee74c238627b5575827c5d8fe110e8bd1aba02a4e132422d6c90fb7a09807b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3248/magpie-cli-linux-arm64"
      sha256 "8c33f6e990f94d4673f25e7bb35ac6be5f0d13190b66eedea0507d82da7ce522"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3248/magpie-cli-linux-amd64"
      sha256 "e4751171ccecdf0fb5d99f0d7419e0e18e6c16e1ff050da8ac9a6abd8384ab95"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
