class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2500/magpie-cli-darwin-arm64"
      sha256 "def042f09f8977a61f24dae0a87c909a5369fc1c5eb2cd67606ab310f556c3b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2500/magpie-cli-darwin-amd64"
      sha256 "411d95d3b94bbf85bb619fdb316b4c82d6191ec505edbbe2ef5b6ef377db618d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2500/magpie-cli-linux-arm64"
      sha256 "fab2da2d18e9e99f71e105a19550d0bd6ae49547f563dbbecfbeeaeac0585429"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2500/magpie-cli-linux-amd64"
      sha256 "2bc63e4c9b39a18c2344fd6e7045ab5c71f7ade3eb23aff38d67db0969acf55c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
