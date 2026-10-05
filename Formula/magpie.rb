class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.932/magpie-cli-darwin-arm64"
      sha256 "38d17f74bc7847667b18569b708308e1613ef7fcc1477809d3f79ec1466f2785"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.932/magpie-cli-darwin-amd64"
      sha256 "356a5f5267a1f0107a3f7a75a24ad29685434defeb614ff69645f049e6019fe4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.932/magpie-cli-linux-arm64"
      sha256 "dfc06f9f2b1eaede31e9e8a9fd42b81ece003e81ba4bfa7cd22208b0a1e5e7b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.932/magpie-cli-linux-amd64"
      sha256 "65604b0ce7a324629a542e17ac9aadc85436375813de38b4e4bac3bad7910c69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
