class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2103/magpie-cli-darwin-arm64"
      sha256 "924cc497cc2634a8946a79af7554d34a1462ac80961c19849f815c1df64245da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2103/magpie-cli-darwin-amd64"
      sha256 "d1a6377b08c8526c86731eb2c981c7b83ce2fbae9d3433f458524133aa50fcab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2103/magpie-cli-linux-arm64"
      sha256 "5c3e60ab78eb504abce1535b1992968a3080b17935762a265ffd053c879cb71a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2103/magpie-cli-linux-amd64"
      sha256 "d23248e903faa6c55a51d205a9ca465cc8721af36b1d97e9a2532090e361d31d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
