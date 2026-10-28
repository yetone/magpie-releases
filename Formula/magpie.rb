class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1948/magpie-cli-darwin-arm64"
      sha256 "33664cbd25de15c02b0e4d14681bceceffd9f5c1a86837ef10af97366a184cb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1948/magpie-cli-darwin-amd64"
      sha256 "f3e16f0fc8c7e2d8cf0a93e448c0a8726b475706b66f753bf3c3b296624b3289"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1948/magpie-cli-linux-arm64"
      sha256 "10a01fba14b1265495269dceb9463fc91121122476f2cc599337b7d5bd00dc58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1948/magpie-cli-linux-amd64"
      sha256 "a3e856e9406d976186e3e2dcaa3d086ffcdb77b853ade74a510b33f23a0aff6d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
