class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1982/magpie-cli-darwin-arm64"
      sha256 "62162bc28c6b85d589c022d3a32ec162c74205fe4f42eb193c2c05bc7be84073"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1982/magpie-cli-darwin-amd64"
      sha256 "32154977ebc4cf83ab2e517351777de93a5d2df2cb0b025605bff947c8480a01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1982/magpie-cli-linux-arm64"
      sha256 "bd0e115d68d4d5d85fa95bba8ab70b04ce2af33bcb84a14c17d90f3480523392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1982/magpie-cli-linux-amd64"
      sha256 "5281460da5815bfe831ce1670f58f7760dd0ce6cc78f8293dd270d08103d2189"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
