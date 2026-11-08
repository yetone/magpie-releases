class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3347/magpie-cli-darwin-arm64"
      sha256 "beba7e255e2b7399a9ff9c9612d366a0b88ca0875ff543c17afe35820edbf3dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3347/magpie-cli-darwin-amd64"
      sha256 "3b727a1a8f6931d52acfc4acac4b69d8e05a72ff7f723c7243f06ff9410d63c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3347/magpie-cli-linux-arm64"
      sha256 "84a7532e4d8bf972c89ce49e07d17d2682c942a8772393576495a6500a1c812e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3347/magpie-cli-linux-amd64"
      sha256 "f3dbfa755996b9b59e5dea8ae7a4fd118d805abc8cea4b70673440e7255760d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
