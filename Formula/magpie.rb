class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4728/magpie-cli-darwin-arm64"
      sha256 "ef7853e235467aeb37d8e97271b4941436242c1f14c5070102070e2a643cd9e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4728/magpie-cli-darwin-amd64"
      sha256 "1d811467150cf29d4f0092492a72da8abe8b3dd073efae879d822db9be3b8094"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4728/magpie-cli-linux-arm64"
      sha256 "a13d6bdd1842f2218d93129bff84338975205447784f5f54f13efc69ea438bec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4728/magpie-cli-linux-amd64"
      sha256 "defa15d740d6a2463b95c23c4e4e85c3336ff84d475bea2d60157b3c73c74dd4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
