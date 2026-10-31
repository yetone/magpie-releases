class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2376/magpie-cli-darwin-arm64"
      sha256 "c923efd0b36b5bd2d6642bbbb2453e53fbb64852b656a8b34f733a9d035dd8bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2376/magpie-cli-darwin-amd64"
      sha256 "3b40fdbc9a043090ad4873bb86e123d47ba85e45edc95a78ada187721c9290b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2376/magpie-cli-linux-arm64"
      sha256 "c6b8a21e1cfffb7267fe02e0b9c0d680075ad510b97b1cce32833797ad69a8d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2376/magpie-cli-linux-amd64"
      sha256 "ce40d1bbbdb550ad9be94e49e9ee28a2a9402a0af1a61bd7e11aa4ab40d86c39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
