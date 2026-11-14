class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4217/magpie-cli-darwin-arm64"
      sha256 "59fc5cd0308be24fb5628a32b6f0612e4dec1769e839104f53d08c9fd8082d00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4217/magpie-cli-darwin-amd64"
      sha256 "e4bcb26d02decce80202f01a12ed53bf57df509724faa641720ebdfeac098861"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4217/magpie-cli-linux-arm64"
      sha256 "e836e0dd0aa196ed4501225fb58330c394f2c9095add9e2ca137bff43602d9c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4217/magpie-cli-linux-amd64"
      sha256 "96fae8afe4daef42403e18c44e80f7f2a7131d9884132589f26df6f81bacad83"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
