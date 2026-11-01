class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2547/magpie-cli-darwin-arm64"
      sha256 "0fc8083195875304fb03e17a6a38ef8d3f214ba7d5f2aa5e362de40ab5bcfea7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2547/magpie-cli-darwin-amd64"
      sha256 "d28ebc2399e9184fc7b8a79e69d872fc7e5ba99674cddfd6732e9b54c7feab95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2547/magpie-cli-linux-arm64"
      sha256 "ac61871eb92a0ea4e00c6d4d3a088058f8e15207b03a32c224e385c3787504ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2547/magpie-cli-linux-amd64"
      sha256 "42266ccb79bbef1b5a3d7e6698f2d28862b56006f102ec3c0ca23ee153077fdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
