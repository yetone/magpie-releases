class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2853/magpie-cli-darwin-arm64"
      sha256 "59f178046e097b16c6e0c2859742151631592861fbc731087768563b84d1d7ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2853/magpie-cli-darwin-amd64"
      sha256 "194206cfcdf3b3ffb41e5af45e4c45f85fc652a9ef22af38792a69108d1438c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2853/magpie-cli-linux-arm64"
      sha256 "6c4154000d2570389faedec191150c237cfed51a167659dc274ca9dd55e9f43d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2853/magpie-cli-linux-amd64"
      sha256 "1643e711768355dfd028637d2a6b51dbcf2b29a1f68f58abae2a86bfbc4b9a89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
