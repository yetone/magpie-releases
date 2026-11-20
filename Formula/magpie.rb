class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4610/magpie-cli-darwin-arm64"
      sha256 "4e28318890d932dba6def40e7e1c6503e36011e6772fde4296ab9af1866d0306"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4610/magpie-cli-darwin-amd64"
      sha256 "a79db91c06fe27206931cde59da1f60815df0fd4f0634c620092669e415f219f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4610/magpie-cli-linux-arm64"
      sha256 "56984d7e1fbba38be71dea51dd0e7a4b5517343f11a02ee8ce32ada408f2e668"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4610/magpie-cli-linux-amd64"
      sha256 "ec0604c639c8ade17bc860585d88fe1d5e9037b5d9ea6a93535d61afd2907e0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
