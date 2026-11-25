class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4778/magpie-cli-darwin-arm64"
      sha256 "515ba2ba4b5496da21613635a4ead991b09b9b27391b81d86e87a6c82bfa46e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4778/magpie-cli-darwin-amd64"
      sha256 "5218b19907320011de3c67f6cb0fdb2f97b90b219f89cb385edf880d69f10164"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4778/magpie-cli-linux-arm64"
      sha256 "9cf61940263cb958a6c9e0cdad0d44e0fc5556d307c69bd68b1c1a0ba8ac6adb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4778/magpie-cli-linux-amd64"
      sha256 "dfeac75b57366ac3100214956c780dbd736806318e3912909d4d00fda80360a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
