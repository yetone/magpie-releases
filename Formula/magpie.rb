class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4576/magpie-cli-darwin-arm64"
      sha256 "d5f721ba9bc6b03111a2b91ba2e65d01f3584b57e9865d68f17d8551e81c385c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4576/magpie-cli-darwin-amd64"
      sha256 "ecdcd43c0b75280c6ea2c0000003b70a44c14a1f3f5fc189efb847bbc9e4be4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4576/magpie-cli-linux-arm64"
      sha256 "9555c5fcc971207fd8cca402cff0d3645afebe75b5822b99386a06db56d2e9ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4576/magpie-cli-linux-amd64"
      sha256 "b1011eb334c4f94a93efd2e086e04438598bd4a6a06d65f5db048e72b72fdb1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
