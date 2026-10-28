class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1835/magpie-cli-darwin-arm64"
      sha256 "253ed7774a792818075487071c8dfe59ba9a89d3f35c32ea828a3089fa648396"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1835/magpie-cli-darwin-amd64"
      sha256 "efa1cc5a41729ed1ba1a833b444e418589a9f9e8813ef019aec2bb63b0d05aea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1835/magpie-cli-linux-arm64"
      sha256 "9b2998f608b304c65c7bf152edd9148edd2e95c29279f34870445bbb5c503696"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1835/magpie-cli-linux-amd64"
      sha256 "5123051857d08d1f8d68a775bf67da26ee6ae681bd62f9a3c0bb78b8b1b62697"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
