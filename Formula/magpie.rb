class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1884/magpie-cli-darwin-arm64"
      sha256 "2bd09fb81c5b238d72b785798db7108a6b211cde66e130c8611110c4a91fcf72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1884/magpie-cli-darwin-amd64"
      sha256 "68facedfa6d053fbf0d8793f77a2fb853f915ec193bdccbc5a203011b3fd1e5b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1884/magpie-cli-linux-arm64"
      sha256 "a5cf9c8c682111f3099b25e1b9880103c92c0ea5d6f243a801135cb4b766a7f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1884/magpie-cli-linux-amd64"
      sha256 "be0c65a12c55b02589f298e16b997a8c0be8281d62a005b7ef86b4d228672caa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
