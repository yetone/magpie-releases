class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4046/magpie-cli-darwin-arm64"
      sha256 "e1a3f107244fd91bc1e742b1fb2073f85b13e0081bc24ef73d3d6f46ee86ec55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4046/magpie-cli-darwin-amd64"
      sha256 "2612067a69a31e9918326a082fe885fa49ff08a80a107be0a069e5825a4a6e36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4046/magpie-cli-linux-arm64"
      sha256 "d3e0585e78d9a3201f0c14efc37555ddb4d42f5a63cb215465e8164f92457bda"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4046/magpie-cli-linux-amd64"
      sha256 "d72770e0c4389bea5a1fbe71575c488fd3b8e4be040616662761e4af1c232d9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
