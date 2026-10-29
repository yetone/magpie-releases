class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2003/magpie-cli-darwin-arm64"
      sha256 "9bed84ba8b2c0f4120390e22b178e826cf2c9f36dd4dd811b3919e37365d72ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2003/magpie-cli-darwin-amd64"
      sha256 "e478dd29cd12872722e6a6e182ce0054d82582d64578841e3cb132c4e7272b3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2003/magpie-cli-linux-arm64"
      sha256 "b015310f6fc50d0fb97f3a3cb1518c95d6cd8c591521c0ac09b12d966f65fc77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2003/magpie-cli-linux-amd64"
      sha256 "d925cf73af28fe1401231dd11fd213ed16ad9c2c2722be786365c202d9e05a06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
