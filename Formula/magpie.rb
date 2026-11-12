class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3939/magpie-cli-darwin-arm64"
      sha256 "151b173b384a69e2194214f91a82819288643384c34b58a912b6c63b2b7c4bda"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3939/magpie-cli-darwin-amd64"
      sha256 "25ec607531f9a7fe3668591a6af5632ae361dea9629af81b5211c1ff94b533b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3939/magpie-cli-linux-arm64"
      sha256 "19a045e0df3221048059a360d85fa87732aee8bf6fdf9c023bde2b62e86ebb6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3939/magpie-cli-linux-amd64"
      sha256 "07e4b5b854071c370bf16bca7ac3c4c6e8dc5c9fe1d2b9bfb62ea9934aa167b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
