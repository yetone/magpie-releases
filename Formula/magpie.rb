class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2926/magpie-cli-darwin-arm64"
      sha256 "4def8503a7b0d5e72286dd37a8beef0d4ab97ecf1bb687fbfdf429c9768cc232"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2926/magpie-cli-darwin-amd64"
      sha256 "884331181bbdd1ffcdf0f12e2d324be571f5ef4c1d958b2ddd9e023dc19b3ca6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2926/magpie-cli-linux-arm64"
      sha256 "1a1350f0f9c465725d80c46ce0053821a99dd2db385ec5339f25670be164e598"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2926/magpie-cli-linux-amd64"
      sha256 "13ba702c783dcfea70f143e0bb3326fb49d786c2e862f96b316662ff01dfd64f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
