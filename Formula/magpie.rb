class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2094/magpie-cli-darwin-arm64"
      sha256 "0f2e0b45cd09502134d499e305f87590a1548aec6eda32c1ba56959bdd231bb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2094/magpie-cli-darwin-amd64"
      sha256 "3931ee1d93ad8e028d8b22240eb20ecc47e0ac5f7c7708dc4aa4e96a91c852e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2094/magpie-cli-linux-arm64"
      sha256 "15848df9d0b28d1871b45b363c4893d8816ec4621c7ac0e346fa9d73923626ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2094/magpie-cli-linux-amd64"
      sha256 "c2b9b1d7b808e6e95b09b20e8e52fa28dc30a44c902f03298c8a9314307fbf78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
