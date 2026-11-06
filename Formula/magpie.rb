class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3152/magpie-cli-darwin-arm64"
      sha256 "6370247208c5f8d3e164a9de59b40ead41019f5ce47f5bf39056d0a6baf952a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3152/magpie-cli-darwin-amd64"
      sha256 "4024d04294a73842668d045561bc4f8787985cf7b0f4626e47ee92ee7be4048e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3152/magpie-cli-linux-arm64"
      sha256 "6e3dffa467dc2b1984b37aaa33e92fd93c51cf51c50cc93fcfb8ee97e9387158"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3152/magpie-cli-linux-amd64"
      sha256 "9f30ac90f7dd295c9cc78040051d520f77e55b9dbfd9d5a3a9c65dca324b5877"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
