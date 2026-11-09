class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3475/magpie-cli-darwin-arm64"
      sha256 "d363ceae65f5cf956e6038518516aea607888d218bd0a91de5e8fc7badcd81f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3475/magpie-cli-darwin-amd64"
      sha256 "df1a0891a5a45f46661b7f3ab802c88635e45d41b62b7f2373c0e24b7f7b0a0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3475/magpie-cli-linux-arm64"
      sha256 "4e4cd91232950b53899136f628d9af4150ad398a32917cc185bfd8a61a589612"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3475/magpie-cli-linux-amd64"
      sha256 "6b5a69e570846dae51918bb9d4dd3d94e484bc1d7e603e69b7955bd7671de4b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
