class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2228/magpie-cli-darwin-arm64"
      sha256 "305b32fd185ec841ac8d271100f6a6c02978e95c6c71aa13d9e00e23f0aa44f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2228/magpie-cli-darwin-amd64"
      sha256 "5e712a93c54ad36c2597bcf97ca7881dfcada5b35d399066e848c66fdc29ec6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2228/magpie-cli-linux-arm64"
      sha256 "e05d22cc125c41b24393b8dd6eb7721aa7d729499bf14389e8c9449fe1e2360c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2228/magpie-cli-linux-amd64"
      sha256 "4dcaf42fa48602162057fbebd12cade00bcb666eac37069131c83b305de60334"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
