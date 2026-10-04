class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.923/magpie-cli-darwin-arm64"
      sha256 "f1e36303927c82082f05246407ee2b7f081e51601ec40fd2094716e57748526b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.923/magpie-cli-darwin-amd64"
      sha256 "d88b27b4f14f3ded3f72daaed1341d1b5b7acfeea16d9d35e8095004edf6f8c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.923/magpie-cli-linux-arm64"
      sha256 "da61e9603c16286cbfd113b7e3d56ab955f37c1a0ea406f9bc520243b2175c9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.923/magpie-cli-linux-amd64"
      sha256 "0e63a8e6225d41d282adde1f2ce44496f8eb636a561b2075ae2292aaca0b0a95"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
