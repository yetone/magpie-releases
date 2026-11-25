class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4811/magpie-cli-darwin-arm64"
      sha256 "61be7623dc25e42b41d09d2c659ff7b07c653789fafef9e18a434bce440035bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4811/magpie-cli-darwin-amd64"
      sha256 "2998187bb48191d6778f676ca3854aa174ea3e2aeff5a13be3c6cdbf2d8e77b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4811/magpie-cli-linux-arm64"
      sha256 "660aee5acfd4f97ca515449905145250016d9ace3d6b40af72abe0a0c96102af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4811/magpie-cli-linux-amd64"
      sha256 "7942b862797ab0f2e3142c3beb17cf8b317dd8f71043701e79b8a6f7fb095c0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
