class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3863/magpie-cli-darwin-arm64"
      sha256 "f7616ea5dbf0619b30b6b6e6e2060ff8fbb1e61b8a6c6d4013da1c6e18f76980"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3863/magpie-cli-darwin-amd64"
      sha256 "3645d3f467f8efb24c12a63cac189331b89000f3607a3e4752b0f5f940f155c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3863/magpie-cli-linux-arm64"
      sha256 "e96510a2004d9a76b4b17a07fad6262b2615d2ad63323a2ea8e8dde80309473b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3863/magpie-cli-linux-amd64"
      sha256 "ab1b1f2063a7978e6030410f8a0ca66df1d4b2dffed1daa8010e4ac1fb6e8128"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
