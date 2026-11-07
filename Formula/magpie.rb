class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3279/magpie-cli-darwin-arm64"
      sha256 "0d96e4e608148a3c995b926e9202f474062b3f1f5f603185d96134db2a450de3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3279/magpie-cli-darwin-amd64"
      sha256 "41a648558a60de2389916e7d65171f0073d652041cef2589860fec5fae52b6b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3279/magpie-cli-linux-arm64"
      sha256 "fccc69f57f3ae5e5d53d470005b5e0262b2d0b70518f795c63a9a899d5b13e58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3279/magpie-cli-linux-amd64"
      sha256 "dd8e460b103983f6cfa519737a9c8c7151ba383dff684052cd6ac3766f8520fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
