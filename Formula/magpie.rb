class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2159/magpie-cli-darwin-arm64"
      sha256 "cdb3c1f49f6d126f689e8058bd146cff9f2ed0a38d597c1605d32e9ae9bdc460"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2159/magpie-cli-darwin-amd64"
      sha256 "360e367e11d8c312c40245c9cf38d5c86882b27ca50228da3d34cd821771aef8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2159/magpie-cli-linux-arm64"
      sha256 "739afcb0aab83f7fc94553426780aad927445b2c51eacff5af83f95bfe2206cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2159/magpie-cli-linux-amd64"
      sha256 "071ae955fa1bda5f24f35fd925ed535bf661b6de9a7910498a7456680779f54c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
