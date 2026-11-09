class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3418/magpie-cli-darwin-arm64"
      sha256 "3f5f962f231b032fce829581633898b4a444ee6549b70793ebec5c2e4146f148"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3418/magpie-cli-darwin-amd64"
      sha256 "093742348e6acac5db0395c771dbcda5b0d19bea3425d5e0869b0f55addd1550"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3418/magpie-cli-linux-arm64"
      sha256 "4961555cdb704b69ca853d314a9439f600c4cbfbce3f01fd417cd1455d175408"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3418/magpie-cli-linux-amd64"
      sha256 "f9b48ddc2aac7992a3c54bb59eda2b9ef754683f2933e0cc1a3dd7e7e7ff5865"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
