class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2579/magpie-cli-darwin-arm64"
      sha256 "23d9e3226ae8be1e82084367c26bdfd49ac36bbc347bc93f9fff78bc157286b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2579/magpie-cli-darwin-amd64"
      sha256 "a3edd78479ba182ee25d1d3c6093650978f2278ba17d78a5dd164add1582e2cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2579/magpie-cli-linux-arm64"
      sha256 "1d070e490d62e5bcd3326de1ed4adf69b75d23e2897be815aa81a9b464a4de83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2579/magpie-cli-linux-amd64"
      sha256 "df7e16681574a573db4c606436df3549c36efa0b2e32cebb4e350d8d18f38398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
