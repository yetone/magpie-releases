class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5039/magpie-cli-darwin-arm64"
      sha256 "ac398a7ed1f90ac8874a9ded3c7a16eceb60d4104c0d7c39901b749f9256d5cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5039/magpie-cli-darwin-amd64"
      sha256 "f31f0aa798a8213f0125e7b6b998cf856fac71e9a366ab378f1419a6d1ef0b9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5039/magpie-cli-linux-arm64"
      sha256 "316296b2781061c3ca24e04edf79398a8d7c606e386b8d6d9acdd8aa99770476"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5039/magpie-cli-linux-amd64"
      sha256 "05e2e1252dca2bb70a691c1104cfd9806d9ace752d6fcade4a974ad6e1e36f3e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
