class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5013/magpie-cli-darwin-arm64"
      sha256 "5e3888c7333714e3f4b5becfd3d1b694e2d025d6e7c99f6a33eb939489fce451"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5013/magpie-cli-darwin-amd64"
      sha256 "0cb95f9002fcb5f4b701981f565f3811da504836a7ab5176c2073eb5d35daf82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5013/magpie-cli-linux-arm64"
      sha256 "e0bd3d619eea86bc3a892227763eec8486549b3784558df3fa77489a189a6509"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5013/magpie-cli-linux-amd64"
      sha256 "a2263087b30ab6e0a5038e762f7476e6b3778bf01fafde6358ec6e7a52ed06b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
