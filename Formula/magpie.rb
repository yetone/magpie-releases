class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2163/magpie-cli-darwin-arm64"
      sha256 "d9cdc4cfed5eb4f048076abbf11e69bf56150dcbeba7630c4ba158aad3eebcb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2163/magpie-cli-darwin-amd64"
      sha256 "9f5fa832de2a525e0720b74b3b80326ac3191860a427c635edde14f8a1fbbd17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2163/magpie-cli-linux-arm64"
      sha256 "bf4ab3a3c3b22099eab671eb8f6bd7ac807c2a6269e2fce7ac71febf4d814795"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2163/magpie-cli-linux-amd64"
      sha256 "4c6e14ab437b63d2d927f7d20217b4cdc4e11fc3094934d0827b26cedf2d3240"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
