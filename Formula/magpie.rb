class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3709/magpie-cli-darwin-arm64"
      sha256 "7c92512d35628fc593fd947e78543e6aa8b46c78a51b9ebcc1c53862582f449e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3709/magpie-cli-darwin-amd64"
      sha256 "58ed85fb0334b654ee04678e1c192f48d0fdc8111535e690f92d077f3bc89de9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3709/magpie-cli-linux-arm64"
      sha256 "321fbef225bcb2d1e80f3cee6ee884b6ca70291c07bab642a7567f1ade483481"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3709/magpie-cli-linux-amd64"
      sha256 "70f0bf5af332cb49e39c3226aef2737ec8fcb771e1395ebdbf97ab10b1f0c1ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
