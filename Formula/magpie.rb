class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3531/magpie-cli-darwin-arm64"
      sha256 "6b3da2b05ab0315a5d92da0b81bdd50fd1bcff3b53935c26fcf7eb6cac452f6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3531/magpie-cli-darwin-amd64"
      sha256 "a384017bf710995eea52f509efb5b5db5d1d891a8baaf64752c9d0b29238fe21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3531/magpie-cli-linux-arm64"
      sha256 "bc2bd90782f5dcb99b615dfb71d14b8849b9584ee75ea7e632862b7e35485f36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3531/magpie-cli-linux-amd64"
      sha256 "93babd2ada1b963ab0f2b07404a36aaa0dc0b6ec4c2245a52e83e6a7bb9a3103"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
