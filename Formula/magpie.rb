class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2520/magpie-cli-darwin-arm64"
      sha256 "4eac66f49b2b6084db4183075b3f4f2c3f290fb12816f0dc030f36b7fadf6fa4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2520/magpie-cli-darwin-amd64"
      sha256 "92d7cc37ae6ef92e6d37f1e5a21c2d04be7a5da2b757342884e3113e2cefba23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2520/magpie-cli-linux-arm64"
      sha256 "b73bfe9b533b7bb211d37a0b8b3568077004bb4c9af51d3c89762c05d53ce021"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2520/magpie-cli-linux-amd64"
      sha256 "0515febe4802bd080008ee4f90cf3717a19e0f54be41b944703aca5025b2ae7a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
