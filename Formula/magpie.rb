class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2148/magpie-cli-darwin-arm64"
      sha256 "074a9a7ec07696388e8dd35bd0d6be12d5d876857d4263d105bee8f08b05dd83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2148/magpie-cli-darwin-amd64"
      sha256 "11c70891e1a42f4953d2fd436669a17cdcfcdb764ecd6532ec925ed8e7e6ca76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2148/magpie-cli-linux-arm64"
      sha256 "4e08874a13e0d74ed5464fbcab2ad70b9320ec72eafeec7d364a5a8f42df1866"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2148/magpie-cli-linux-amd64"
      sha256 "657056e8080b75c01220477762a40d302b1a347bf97f52ad088ba84c9b68d50e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
