class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2153/magpie-cli-darwin-arm64"
      sha256 "bbefc78b1a832d5a4195363a798722580597eb22afe3e8286242c85bc971eac5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2153/magpie-cli-darwin-amd64"
      sha256 "fae0da8ae0ead43fe034416cb39a413d29819daf2c5f8061e678c468b7aa79ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2153/magpie-cli-linux-arm64"
      sha256 "2fd04ddf0cf76535bf52d16d5d0ac780e86e51a79e69bee3e9f2f0964a38fdb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2153/magpie-cli-linux-amd64"
      sha256 "c9f2e1638d66dd291ba9cce5cd784e4e3918e88a924c2d0751261999370e90a5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
