class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.938/magpie-cli-darwin-arm64"
      sha256 "a4ea5f7ed7c515389379c85eb775cdc13518c67d93e27e51555751c7685be179"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.938/magpie-cli-darwin-amd64"
      sha256 "c9ea762f5cd5432bdf7c213b098cd9c84f88e93d3c7307a4d52f6a8fe6c3a292"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.938/magpie-cli-linux-arm64"
      sha256 "d580d585c115c172ceedf2beac2b639f74e72c140789ab76b885ac0d902c05ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.938/magpie-cli-linux-amd64"
      sha256 "5304be055348380eb9a302588fe6092685ecb37211942503a0377d3b4fc33732"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
