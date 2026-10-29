class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2076/magpie-cli-darwin-arm64"
      sha256 "a0a3c98ddc6d213fec3ac6a7cffe98fabd5c6a03ef64ea84bb309bee8b2f1377"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2076/magpie-cli-darwin-amd64"
      sha256 "4486e7af2d6e4eb7d4941f5de90841ce8153ba51507d86fa7dff9c919eea9796"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2076/magpie-cli-linux-arm64"
      sha256 "1f8f6b72a89be29ecbc66d1803ad779eb58fc99719488de0f701f273e40f5715"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2076/magpie-cli-linux-amd64"
      sha256 "c92082be3aef06560da5034f1ea8d64cb461b6be7578436063f11bb8edde67fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
