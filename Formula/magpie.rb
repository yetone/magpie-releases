class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1054/magpie-cli-darwin-arm64"
      sha256 "06cc5a025d9f974f5dd34c980ddde5e4abfb4b632e2e3e86e2554abed5bde6a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1054/magpie-cli-darwin-amd64"
      sha256 "94253913460443fd998d8ba6d52e61c51b0316b94e99e993557f251240d4d9dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1054/magpie-cli-linux-arm64"
      sha256 "170a5a64fa4029d7dec3e180622e91ff53dac0c4e369f27b680d560e52e9415a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1054/magpie-cli-linux-amd64"
      sha256 "07086b188d4ce2d4ef5beb4b2d1c706f75848ee45e6bdc4297043968b7a88450"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
