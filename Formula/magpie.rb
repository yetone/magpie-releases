class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2272/magpie-cli-darwin-arm64"
      sha256 "94f43bfa2259da34e3ea649c4aaa7c42472517dd43bea0a7868d306425544601"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2272/magpie-cli-darwin-amd64"
      sha256 "0315efb488dafad63bd88bd844eaa1c0516cffe19c6359e2fcc00919fbdab96d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2272/magpie-cli-linux-arm64"
      sha256 "ec57d2fcc51ad6e993195b7f7e24f7818be99b58fdb3f1f0d8885518a0df9004"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2272/magpie-cli-linux-amd64"
      sha256 "3dda959525b5ecddb707a1347f1d19934c7d72f21ad0be575f75b6c27f3b7cba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
