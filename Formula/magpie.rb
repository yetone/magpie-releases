class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4175/magpie-cli-darwin-arm64"
      sha256 "4f2ba0abe486b1c8022a0c4f56322d7bd6b59270f1b001ab26099ced56c12754"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4175/magpie-cli-darwin-amd64"
      sha256 "a045fc7e01bb9869c2a54dbba99b2f3a0fa28c9ee6467f7700786000d6a9896e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4175/magpie-cli-linux-arm64"
      sha256 "8e97f904cbc4502a91f4c53520a3e43bd0e5a465cac4f88c59ebcc48da3462fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4175/magpie-cli-linux-amd64"
      sha256 "fb35d3f6c44853d08a5604665a0eeb406d4a83d9309e4956e2a03d0ce173d905"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
