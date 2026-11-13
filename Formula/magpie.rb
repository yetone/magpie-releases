class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4089/magpie-cli-darwin-arm64"
      sha256 "13c821f04239145693c32f89af017466ba56dd42aa782f71ace92118e96a9050"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4089/magpie-cli-darwin-amd64"
      sha256 "11bac929124755cc7f7541f37ac544144aa6f00b68bc2544ac2728c8af643855"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4089/magpie-cli-linux-arm64"
      sha256 "3efb01b55520a3d66413953479ab3c12402cb272e149f597bee455b8b35ab590"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4089/magpie-cli-linux-amd64"
      sha256 "3c2772a37decd62221288866315dffc6c2bd18083013d891f1cf9e9f3cb12bc6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
