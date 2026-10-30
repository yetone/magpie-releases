class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2165/magpie-cli-darwin-arm64"
      sha256 "c25ed45d44730112460adb1a6dd0cc434f485d2499032478e0eddb11f94dc4cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2165/magpie-cli-darwin-amd64"
      sha256 "38958c3f5941b03f42092d0072b8ff358cdfe176a480f2a9f1796f7de94946fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2165/magpie-cli-linux-arm64"
      sha256 "a319f5673e272de1dde96ffc785d7938f6280f0e1b21f0219a22c8c8280072d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2165/magpie-cli-linux-amd64"
      sha256 "6c3e9a9c36524cf844a6b7969b52e81ea92d1e63ec6d56d590590bc96dada4e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
