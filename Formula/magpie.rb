class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4249/magpie-cli-darwin-arm64"
      sha256 "5d397b0ea9ab550e4072852e2376f084dfb309d7d9818169b892976b51e556f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4249/magpie-cli-darwin-amd64"
      sha256 "a3624826f4e60e94ccc1b373b30972c6a989aec147ab8b7fc35636f38ca2c67d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4249/magpie-cli-linux-arm64"
      sha256 "093fc366f74b2d3a5773ea63361cd1d3bf0cb89ce415b7af8002973510d42448"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4249/magpie-cli-linux-amd64"
      sha256 "5d9b5d4b08111c5652c4ee5b6b38ef060a46bb23fb10f9895469c93da2c90cc0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
