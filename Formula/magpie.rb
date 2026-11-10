class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3540/magpie-cli-darwin-arm64"
      sha256 "d0e5c5e2eb028633c476f006dc357ffb3a12d1d6a4d94a89f0bc50c8fd3455b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3540/magpie-cli-darwin-amd64"
      sha256 "11b1770aa0759185edaed6853a4509fe3735f3e7dbbfa4f619bbc3a3228a2e85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3540/magpie-cli-linux-arm64"
      sha256 "700b460db4634d222f3b7df22af78f9c9da816191263e303f631295a2ff2fb51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3540/magpie-cli-linux-amd64"
      sha256 "ad9a792b0e85062020bca7fdc9b2b68eb84e55cea962e99e78b9fd7c4a343df0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
