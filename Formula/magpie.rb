class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2629/magpie-cli-darwin-arm64"
      sha256 "6faa5ef4b0a729d8ba4077bdf0c5882d1884763a2a001028375b401e10fa34af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2629/magpie-cli-darwin-amd64"
      sha256 "be657e7cb4f6c99e2de3b204d7fde82b72a1581c4e761fa72d3e13c99a1b41cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2629/magpie-cli-linux-arm64"
      sha256 "782845525733f294bd1e785cfca51b559ba49bdbe71ac1cd4f25e07a2a1a77c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2629/magpie-cli-linux-amd64"
      sha256 "41b27a58ea6b6645f49e09cb74339572d3655c5c7265ffb36f9885cd06aab1c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
