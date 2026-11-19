class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4514/magpie-cli-darwin-arm64"
      sha256 "e4e952825534bcfe5cc1a4f66a7d015d7e4b64c9ed7fd7f7a0e7993d65a0f50e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4514/magpie-cli-darwin-amd64"
      sha256 "18f054ba1f51fe3471411b2af6971df1bbf0e8fb25542e8ebb1f0c310d530772"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4514/magpie-cli-linux-arm64"
      sha256 "c5d5a375167b69c3b6804b9938261ed9b8a83cf72b212bce95372893133e849f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4514/magpie-cli-linux-amd64"
      sha256 "3b9e5f3059d08262e6475085fb5d22d4cce303f271bc3d76e26434b612d51398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
