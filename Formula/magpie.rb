class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2985/magpie-cli-darwin-arm64"
      sha256 "1840a0af3a04b857b1c686048cf70acf7cb9dfb830d4f0d1a3286057bfc43af1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2985/magpie-cli-darwin-amd64"
      sha256 "e9269a44dd3a54e2011d828ab167514f72fad02128dd702ab4bcac0a7f615764"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2985/magpie-cli-linux-arm64"
      sha256 "d04583ade6cda38417f4dec483669d5b137dac2160779497820a454f7135f7fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2985/magpie-cli-linux-amd64"
      sha256 "7730e5483348149ad240c6a6fc0d0cb9ab534e90a146e10ad948d9f01ec8bda1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
