class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2230/magpie-cli-darwin-arm64"
      sha256 "2f317b3eeefd8ee4bbde70ad26d0d8d9a09c978297a0514eec839938c3033e1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2230/magpie-cli-darwin-amd64"
      sha256 "74e3db2703843d16f12b899dab1c7e7983be8e1f88b09401c042a72a7d12d6c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2230/magpie-cli-linux-arm64"
      sha256 "3c9747d7b3e12fb47319fa1964bede073b06b2c90a1883d553f82981dcf692c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2230/magpie-cli-linux-amd64"
      sha256 "194aca50fa8720d6cfe5ab0908c2ddb60a7e6d72e67fc83ebaf25f327f5408cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
