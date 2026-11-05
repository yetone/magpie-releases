class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3052/magpie-cli-darwin-arm64"
      sha256 "c700e16419d40eee5507c2a71c8797e70dd3a7ae4b9ea889c4d41e79d0638e0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3052/magpie-cli-darwin-amd64"
      sha256 "86af374952baecf881ed26e677b1460dcc84224c049ac6144c30da3ad8b3079e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3052/magpie-cli-linux-arm64"
      sha256 "8f3bf0fdbc39a4366e67f4bd1eb08f6ae3924c980b1a1e215b27972639f62340"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3052/magpie-cli-linux-amd64"
      sha256 "45f441d38ce2d9474d93f3d3911bf788a41f2e19ec36073c9cc3bdbab729de28"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
