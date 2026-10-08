class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1128/magpie-cli-darwin-arm64"
      sha256 "6c2d67a0d5738ac8c6104db5afc6d21d99a47f9cc248fde9298f9332defed565"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1128/magpie-cli-darwin-amd64"
      sha256 "6eb94cde50b7a125a62806fd8cef7bbaa9d0a45859b48336bf4c09810704f8fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1128/magpie-cli-linux-arm64"
      sha256 "35ff70bd42379a12b4f583cb62bca5c7e78ee1943c2618b9641db14527ca4666"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1128/magpie-cli-linux-amd64"
      sha256 "50f9b7c5ae22df760118b9bba6363b346ef7d30cf7b421b8e3dcca604c6b3fe7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
