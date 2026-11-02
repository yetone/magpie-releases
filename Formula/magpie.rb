class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2686/magpie-cli-darwin-arm64"
      sha256 "16fa959c84eb47a642d8649d77d93424445976856bb3a0300ba43b4b92196d6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2686/magpie-cli-darwin-amd64"
      sha256 "accafef2d5436dac5f1fc91f85c412d32d5c48000b504722183ae2fe0b991493"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2686/magpie-cli-linux-arm64"
      sha256 "6658c0f84870860a6d4d8acd22ca6f85182af7ff25534466bf2a4d3a79a4e80d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2686/magpie-cli-linux-amd64"
      sha256 "5bedf31a5be488169e19dbc017d17cf2fb5cef754ffe8bb39e7d2c2e3997c7ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
