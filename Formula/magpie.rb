class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4882/magpie-cli-darwin-arm64"
      sha256 "dd1d949318ccd0b8836413d75cc1c6ff476b3f7a698b30f1325a2fb9b6d82b7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4882/magpie-cli-darwin-amd64"
      sha256 "76ab506f5d8a16955f5a1ef7a22b672625e9313e2e043e1576110ee2a77519cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4882/magpie-cli-linux-arm64"
      sha256 "01fe9cd1e943890a28bac83a0d1bde35ec39a67ecafe838a0488f79ac8201025"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4882/magpie-cli-linux-amd64"
      sha256 "2c8bdab11482d0ff3732e6b597859aa56cec01f530e54adc87fbdbfde46e30f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
