class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3308/magpie-cli-darwin-arm64"
      sha256 "9380da79a2c579599192c4e9352f20893ee907ef0fb93469aafd8ceea9f6cec4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3308/magpie-cli-darwin-amd64"
      sha256 "0bb6e0e4cffaf1d1186a7b0b77b70a7bfec352da0a585a27cf2e47d29821ae7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3308/magpie-cli-linux-arm64"
      sha256 "4938ea34df7105657dfd0ece6129c0b005cccdc0bdcaa144c48c300558a8f8cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3308/magpie-cli-linux-amd64"
      sha256 "bfe699dcd46882fb2dacc092ec170eabd5106056e86f02e991c956a7bb86b0c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
