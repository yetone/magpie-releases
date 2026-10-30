class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2195/magpie-cli-darwin-arm64"
      sha256 "4a0b119279128a59bdb32883c05c852c52c7cf066a5d34b8b22be2febe0683c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2195/magpie-cli-darwin-amd64"
      sha256 "d81b6d532fcc8fb2756a43d5a474aa5d484ca4734ce2d371e416f3eb17a02455"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2195/magpie-cli-linux-arm64"
      sha256 "761f3bf6c5910341f2b455155500ffb483c44ac83c78fce66b54e3426440f899"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2195/magpie-cli-linux-amd64"
      sha256 "e0423729a6d609c55050e2ccd1aa98de87e6b6f96957bad1cb3fa7c99323d1e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
