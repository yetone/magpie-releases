class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2542/magpie-cli-darwin-arm64"
      sha256 "caf1918f637086e001884844bc3835e89800d9ca74ba6fe0a44a0c6d155765af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2542/magpie-cli-darwin-amd64"
      sha256 "6570c2271fcf55f56ec3f3e07144d2b27a873d58f2ec7841de015a9da11ba2d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2542/magpie-cli-linux-arm64"
      sha256 "d6f5af5d9f8af64da6da16229bc6c42f2352e6cdeac5935f09819fd5caaadafd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2542/magpie-cli-linux-amd64"
      sha256 "e1aafa2ddb6d934466b0c29e9d6b6356d1454a13b82f77157d5f11986ef552c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
