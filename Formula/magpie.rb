class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2274/magpie-cli-darwin-arm64"
      sha256 "ff59026a33a857fc341703a2e35e684537210ee5b83c907528ff3afa4a9e4a1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2274/magpie-cli-darwin-amd64"
      sha256 "eb79e0017a6966791da93540ec9fbbff233dffb63d99f439a057e9285d109da4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2274/magpie-cli-linux-arm64"
      sha256 "de36f6e91e9ae5c08b5e6b20ff465ab68615667a66be9a576e6a46f1272aa704"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2274/magpie-cli-linux-amd64"
      sha256 "6c0a621cd07437ad4e18c6d18c32bff42d777a33baaf072a8359dc07a18bc9e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
