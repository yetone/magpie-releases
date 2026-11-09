class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3442/magpie-cli-darwin-arm64"
      sha256 "0ad3de87c8e905985f6ac10138e29080268de03f1e741ea2f4ab5a1dfde9d0b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3442/magpie-cli-darwin-amd64"
      sha256 "32b4c99219fba6667c099107d921521309730aa09e3323b1b194888f6824ecad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3442/magpie-cli-linux-arm64"
      sha256 "3e29a0d6c90f8169092a623c1cbb47e390337a92d59417e3f8db9c87fb272771"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3442/magpie-cli-linux-amd64"
      sha256 "505ffedb8d4bd08fd9a8f0a69c5f3f0a286602c37e6e4a040c2d2729d3e82f8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
