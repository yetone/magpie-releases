class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2346/magpie-cli-darwin-arm64"
      sha256 "50e9527998d2b038e9f0ae7fe12e8d517e7960bfa0a0dc707ffa368a26ebb6ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2346/magpie-cli-darwin-amd64"
      sha256 "41f9e066dc69b2d8f92ccecba2a7e0ff9bd82d380f30127752e0669405f43533"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2346/magpie-cli-linux-arm64"
      sha256 "5a05723c2bf18bd28e6be0579d739df662197e4737b38ced3d04354b51d7d632"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2346/magpie-cli-linux-amd64"
      sha256 "3e745cfb360efc29a6e457d69989763d275a2e4cbeca902634ca873e0cadc216"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
