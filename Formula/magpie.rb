class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4017/magpie-cli-darwin-arm64"
      sha256 "68ea5f877dca6c0aea6ab0c1c8c2ab002b1f9726c5ebc9d6625ed7948d225d38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4017/magpie-cli-darwin-amd64"
      sha256 "c2e8d660f26d3ebac65b0f90fb5b523266d839e7a9e8b75ae3ed1185c7217c74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4017/magpie-cli-linux-arm64"
      sha256 "5ad44f4cde890b79b0dc0f869b1898e9c2b4a2096c1dad18d1a1d6a50a73c96f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4017/magpie-cli-linux-amd64"
      sha256 "944ff5ec2b2e7b42cd73a6de396e57314b07cbc6aa0435b30a21e7b76c936b56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
