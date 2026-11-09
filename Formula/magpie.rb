class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3454/magpie-cli-darwin-arm64"
      sha256 "d5a4eba1aeccfe0f9f95c70a1884042af1987ed5666a09e83e69e69ed25f032b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3454/magpie-cli-darwin-amd64"
      sha256 "6b6145271a600e3386ef661fd1fa5268a6cdfee448df78f72a5b5cc8b69ed5e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3454/magpie-cli-linux-arm64"
      sha256 "c1c3da5f2bb18f353bc5a99743d9e4a63da9fdc13326276108d72dd1b49d2d18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3454/magpie-cli-linux-amd64"
      sha256 "249838c73644bc6f2218f6c7a047d3d223f1b5173cec5e1d8499478730d0448d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
