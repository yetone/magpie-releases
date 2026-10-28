class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1874/magpie-cli-darwin-arm64"
      sha256 "e2ee1d2841dfad7f4cfc41cbde034422b8873a35e2da378c0b3e259e652a0110"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1874/magpie-cli-darwin-amd64"
      sha256 "50411e7d67416bfb1c90d410f3ce02c102e2778c756642ce44180233431c73fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1874/magpie-cli-linux-arm64"
      sha256 "d52b0203ac6d77d19a8a151493091f43b8585c25b48720553bc2877d9863ed3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1874/magpie-cli-linux-amd64"
      sha256 "100b81dcdbf30d81bd6da65e112670c37f9d92c2cd73374eb0f1f37aba5dfba1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
