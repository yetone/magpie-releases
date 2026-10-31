class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2457/magpie-cli-darwin-arm64"
      sha256 "6a2e141ebf7d3a534972c3e6c6b757cc2de6affdcca3103aa291604cf31e020a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2457/magpie-cli-darwin-amd64"
      sha256 "77b64326d88de064c430f1f835c103c4d15a8fcc8218ffefe2ff2763c83d26b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2457/magpie-cli-linux-arm64"
      sha256 "c1aa1c9e530190cfb6a4dd463de6f69e0138800b435f8192919123b5e479f7b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2457/magpie-cli-linux-amd64"
      sha256 "38006e6feddb2be8b5a0bb6b73481b421bab6ece18042e04e325b5720435c8b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
