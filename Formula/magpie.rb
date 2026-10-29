class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2081/magpie-cli-darwin-arm64"
      sha256 "ef6be518cb908d32643c2fe137bcae2508301bcaa6ef45640ffe8854f1005c8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2081/magpie-cli-darwin-amd64"
      sha256 "79538edd87a3e31bcf205895bbe4ef6b10e5d69d73c2bf4dc7af038ddfa905c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2081/magpie-cli-linux-arm64"
      sha256 "0811dc055049aa74a0ae79c9ad5648d56a4392c9ab6d340b6636d18098cd3da3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2081/magpie-cli-linux-amd64"
      sha256 "294e81f7d36629692d523bcfd6ab26d4a6c4b7e01d8e8847639d9e46738abd72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
