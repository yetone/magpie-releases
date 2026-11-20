class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4619/magpie-cli-darwin-arm64"
      sha256 "ded10f50f1e5859de8fc617747742d59c5a1a550e1c8e617a6dcaa2291d7027a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4619/magpie-cli-darwin-amd64"
      sha256 "fef26f0b7643ad65c49ba0e7512d986aa0058b829ab602dd25f0ae33897f646d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4619/magpie-cli-linux-arm64"
      sha256 "9f0bd753bfbf9c5d1dc26988422d07fdb3cf449a33888461dc2f14e07207cf38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4619/magpie-cli-linux-amd64"
      sha256 "ccdf60f1dd493366f9aae9c9970266864fd35722944b0709339124cbe25e8aff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
