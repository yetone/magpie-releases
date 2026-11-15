class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4237/magpie-cli-darwin-arm64"
      sha256 "5324bfe5584f5f74b1fb79531b2965a88941323f8d4ba4415054f10c9aec7b96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4237/magpie-cli-darwin-amd64"
      sha256 "973e218da9f707e31dbc71fcfeff936c343dfd88a99effc2abd32e6996e35c6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4237/magpie-cli-linux-arm64"
      sha256 "896203e10825a4fe80bfe118d0233663caae7945bf4fd8984b6b2827ba3528a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4237/magpie-cli-linux-amd64"
      sha256 "03bc4f49a96fffe7ddeb167341ccb779f388594409a514e344db881efe9891a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
