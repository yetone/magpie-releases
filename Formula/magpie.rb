class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2854/magpie-cli-darwin-arm64"
      sha256 "4ee8e706fa76aa6baae521bbcbef4b8440f245b742be1bc9519aaeb279c6af68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2854/magpie-cli-darwin-amd64"
      sha256 "effa444df8474b1a2e913b0fe9cafcb3cee902c3a9ee155eb9d5b39c1badc476"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2854/magpie-cli-linux-arm64"
      sha256 "c53041012e4fb1f1f5a170d2fe4a1bfe85f0054522cf6acb7e0e0e370a55c2a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2854/magpie-cli-linux-amd64"
      sha256 "b8fdf4c71b04349726d037d47d7a31eb0d294089c845fe1f81c116ea541b78a5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
