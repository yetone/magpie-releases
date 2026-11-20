class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4591/magpie-cli-darwin-arm64"
      sha256 "f4ca351a7ff38758a3842085da5c678b30900523315eed40c3579cc03f101db6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4591/magpie-cli-darwin-amd64"
      sha256 "d39f2b3ea2b3a843322f8da570eddfa91ece24c253d14e531f3e3867349b404e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4591/magpie-cli-linux-arm64"
      sha256 "55a6172f313f659622b003540c3bde4c3240aa1e6791c73dbf608854a5d1394d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4591/magpie-cli-linux-amd64"
      sha256 "d002634d177dabeb99d51127290876833452583793db49c41a3fd453b726b81c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
