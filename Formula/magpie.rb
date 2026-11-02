class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2673/magpie-cli-darwin-arm64"
      sha256 "74ff83ecb3409874538d2e3b52bca5df5f3b483c447606987eeb6f68f2287695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2673/magpie-cli-darwin-amd64"
      sha256 "33bbd6c9b932357b32d39cf6ae0b24ea9769278e30a012601322feeadaec1b73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2673/magpie-cli-linux-arm64"
      sha256 "ccd1c1d3e01f939dae2037d4b2ae2400dab6b69b2e6ba82285e059f7a070b1c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2673/magpie-cli-linux-amd64"
      sha256 "3386eb12a67cd284f7a2e925b1a97cfccb01d8a1fecf02098a2474389b605de7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
