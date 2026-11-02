class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2698/magpie-cli-darwin-arm64"
      sha256 "1b3eb380c8eaaa0a28f0fc5a481185aefc817fa27d65ddeb2f1e6b494861bccd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2698/magpie-cli-darwin-amd64"
      sha256 "dfd37128bed9fd1b2c3542c26b46b457148dd19cf1ed58b233a4ee743015d81a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2698/magpie-cli-linux-arm64"
      sha256 "23468c5b9eb8636ca4bd2d505dbcfb9d92d5d7339fe7f737dcab4065e59ad281"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2698/magpie-cli-linux-amd64"
      sha256 "2f984246edc230fb3729a9ea32ee692ab3bf9f2ae8fe1f38466562e73c62bd74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
