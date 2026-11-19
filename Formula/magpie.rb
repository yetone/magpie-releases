class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4508/magpie-cli-darwin-arm64"
      sha256 "24b2d088f1c12a24a9775c21aa5a9af94fc23353586960b7c0155c1c2e96cd9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4508/magpie-cli-darwin-amd64"
      sha256 "ac3b9d9ba9417b6b6880a71a93f4db2cd63b5c54b16b79c3f5c146aa175f59d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4508/magpie-cli-linux-arm64"
      sha256 "5c7f5cca51f0ddd7eb70e0d7cd1a4f5285840124a388d6e179432a241f7188ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4508/magpie-cli-linux-amd64"
      sha256 "7ccb61aba78efb45d0891b6145932df158556bdd955dc41913cd0d8dfe6ee366"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
