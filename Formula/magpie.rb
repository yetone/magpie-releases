class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2488/magpie-cli-darwin-arm64"
      sha256 "9342488bb10722f59d5fe545cfac725560a5d34279183f5fa19615ba56c87b15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2488/magpie-cli-darwin-amd64"
      sha256 "fc4fcc44b5acd705c71b0d5abda5d94317e19a56956782449b1a64ab270c5af7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2488/magpie-cli-linux-arm64"
      sha256 "f2c8f5e1905ce6ca673644d5f4a6eee814417fb5d10d124c2897be932b6259f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2488/magpie-cli-linux-amd64"
      sha256 "c40b81b4ca86bd312f99ad329dafaeb539341293600dd83edf38c17576609269"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
