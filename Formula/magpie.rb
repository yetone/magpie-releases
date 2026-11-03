class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2772/magpie-cli-darwin-arm64"
      sha256 "efa2d87535fc7fb440c8238939abad7c533933721a37136912ad51c0ceeca24f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2772/magpie-cli-darwin-amd64"
      sha256 "00bd303ebceeffdcdbcf83d629b6530f20e50b91343c6d9021f72544fb60fdcc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2772/magpie-cli-linux-arm64"
      sha256 "71795629c39e5b67030bfe79995e65467c64cd96582e062b6df02128cb5f5475"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2772/magpie-cli-linux-amd64"
      sha256 "06e0667efd6e55761ba5ec29a3daa661e755f5a2d69dd3607ddd1fa79c9bec4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
