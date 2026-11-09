class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3366/magpie-cli-darwin-arm64"
      sha256 "524b6d4591b8b810a271245af99ba5b234a1132004c5343655479481efa6f9c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3366/magpie-cli-darwin-amd64"
      sha256 "d7400b85c5eb22eba803b69563d3753102d23061e2e64c44dc35fde717743143"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3366/magpie-cli-linux-arm64"
      sha256 "4f73a5b7d1263c1eee66502a11ed6467f776388d5e7f23b4e355ce5e05f421da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3366/magpie-cli-linux-amd64"
      sha256 "6967aa7c320902c8020d9194c67ed6fe7c88b84f85ae163060b7469723d6fe2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
