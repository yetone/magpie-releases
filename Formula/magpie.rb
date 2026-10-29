class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2096/magpie-cli-darwin-arm64"
      sha256 "46a3c212b15b7d13c301bba0e7da46c047a7b2b35b2140c1cb894811d63b85df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2096/magpie-cli-darwin-amd64"
      sha256 "5eaea588baf7101395e176bda0571a6932214b515a4ea8627de87f7dd3da45e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2096/magpie-cli-linux-arm64"
      sha256 "0e0d8d98270f236d527cdc9249df074ccf7d10a6f475c40f6ac6e282961147cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2096/magpie-cli-linux-amd64"
      sha256 "d252190f4e72e566caa3beac0aa07ef5dbf11935d67e28ad2bd297fb6b3e3018"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
