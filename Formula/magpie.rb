class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4998/magpie-cli-darwin-arm64"
      sha256 "0b0a75101aafe8f2e36c0e80894e04dc0e732cd764a787f14f405f3687a57bf0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4998/magpie-cli-darwin-amd64"
      sha256 "7ea7c9dc0be7e84d6539a75ffa6a0fb28ea7d64ace59b4de3f478050de31d8b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4998/magpie-cli-linux-arm64"
      sha256 "3c638b80e5e0590fc317871a617ae66e27622b28d9da2e4206f069c2ebf6de44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4998/magpie-cli-linux-amd64"
      sha256 "425668ec35da8a2dba51213fdf16b7ceddb4e3244b35d8dd00307dad6f49c7e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
