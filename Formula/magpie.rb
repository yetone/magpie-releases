class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3733/magpie-cli-darwin-arm64"
      sha256 "c3b1823422b19db3d59a6b79c6bd276cf76cb9847213b5b48ff5671d5ecb1f6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3733/magpie-cli-darwin-amd64"
      sha256 "1c96aac128b1f02c6924a2b3c3ba966e0cc671ac3777302f03c952a585afcf0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3733/magpie-cli-linux-arm64"
      sha256 "90a66d99ffaa0ea883c6acf6aaf6f5395c5eab7f0ae97bd4bb87bbafce3ca8c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3733/magpie-cli-linux-amd64"
      sha256 "f934acfe81b71b2172a4386f8aa3eae18e1b8a066e2c9347f42712e7c2eb6341"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
