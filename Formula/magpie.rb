class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.998/magpie-cli-darwin-arm64"
      sha256 "b65c76d1435f13f8d01056e56a23b0d159066931ac012d247413b8c6e828d098"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.998/magpie-cli-darwin-amd64"
      sha256 "11a7621d13828e6d3295264e493bde9933bd5e4dbd1f0a62e74ecde0df182333"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.998/magpie-cli-linux-arm64"
      sha256 "b8c6c69742de57ea2c672cbd6c24dd3857a47377e2af8499f1e989c1a32ed9d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.998/magpie-cli-linux-amd64"
      sha256 "a427d6225bc2fbf7ea36650d0c6648ae4343ffeae857181ad7f8a4277016c081"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
