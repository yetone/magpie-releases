class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2358/magpie-cli-darwin-arm64"
      sha256 "863606beaf1aa593544cf7e884a25c69d2c8a4bfd60aa73fec82de446d9bb162"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2358/magpie-cli-darwin-amd64"
      sha256 "5466fabb1859c86c8cf45b1547ecc0d80827fb664dfc116c712605fe9eb002d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2358/magpie-cli-linux-arm64"
      sha256 "d27b0da0c68aa550310baa1fc417c1f650672b348c8f6ba1a940b480859b4479"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2358/magpie-cli-linux-amd64"
      sha256 "f0cb010321d144386242ac4ade88d58a8f7e24260ee2b2c7fa10e476949700f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
