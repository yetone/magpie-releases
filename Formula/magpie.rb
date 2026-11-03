class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2826/magpie-cli-darwin-arm64"
      sha256 "54d7a896b144174e8db0704a728715786581194164c788ea6d04234c1947dfdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2826/magpie-cli-darwin-amd64"
      sha256 "fa19c1ca4be8bfc34aefe14acfc7faead4c2dfceca5372ea04eafa0a637c96bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2826/magpie-cli-linux-arm64"
      sha256 "499bf8d4ac6d083d2e2db9bbf4f284cc490898f5545d14007deb8f8f4fc8fb06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2826/magpie-cli-linux-amd64"
      sha256 "647543c7d0b0050b79c3b7de44d09c605c0bb8649c64913bf97babef5321e07d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
