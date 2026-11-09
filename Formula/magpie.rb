class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3483/magpie-cli-darwin-arm64"
      sha256 "61a923c32bc4c4c3425202ac1e6bccbc4f19157450314c71f79ea0f22ed8bd9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3483/magpie-cli-darwin-amd64"
      sha256 "4f19a336183af9d05b9c376a1a3d62c0d6fd9d2b9cede732820b68dbc50ccf8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3483/magpie-cli-linux-arm64"
      sha256 "c408f22ca6fd78c04df143c0b0b38c7505127fb3e59c03305da90aafd69ca901"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3483/magpie-cli-linux-amd64"
      sha256 "efa01221183397a1139d0c662f8d2ade76dabfb9c3495c2e3522670c014e6c06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
