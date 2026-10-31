class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2473/magpie-cli-darwin-arm64"
      sha256 "6816765ba7925a72ace311a062363bada5b24fc194f1be3034aa0f69f0b1362f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2473/magpie-cli-darwin-amd64"
      sha256 "934dda93d8edab786c554c1d9143feebca9cd8bf3fb74aeb3c685201213dbc9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2473/magpie-cli-linux-arm64"
      sha256 "b776b904ae910556b3100f3e898b7ee12884e5ac44ec42e229eac6a42bff99a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2473/magpie-cli-linux-amd64"
      sha256 "f09cfdce3592d965ab6d4ea8267854448526183d449cd9ef85bc6ef44ea3ab25"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
