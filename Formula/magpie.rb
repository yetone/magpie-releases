class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4364/magpie-cli-darwin-arm64"
      sha256 "6ee6edf1d8cecaaf7d739f8a6b654bc5f5d3b2ca1172d3d58830d9366f52c76f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4364/magpie-cli-darwin-amd64"
      sha256 "ef28969e24e717c198d09e7e27b0e0b85e3f11cf32fec56a7ea02dfdde5d5521"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4364/magpie-cli-linux-arm64"
      sha256 "bbdfab99a8d49cd9f7a96f65b21c4ed8f287ee798eb3d3ebf88b9ddb45b5072a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4364/magpie-cli-linux-amd64"
      sha256 "cd4af5c3a8f18c21819e2441fc6dee22fbf1f80c432436e617a397c2a7b08dcd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
