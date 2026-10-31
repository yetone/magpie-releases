class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2340/magpie-cli-darwin-arm64"
      sha256 "6c7eb40c2fd08082bb5705e2d5335a25e24a5c27df07a2d6abdddafe614fd0e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2340/magpie-cli-darwin-amd64"
      sha256 "19daca8d1f5a7ddbc6b301de214458a8558a5b9507eeafa50cdf6d5b49e43448"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2340/magpie-cli-linux-arm64"
      sha256 "7ebead94dac9add3ca219dc61665c407f2b3c785d78b873b2d48635577da2c6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2340/magpie-cli-linux-amd64"
      sha256 "a3f98577f7df3b31374e6b79cde7258bb811ed03beb4c8644613bf8d3bb175dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
