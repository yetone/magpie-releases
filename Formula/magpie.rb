class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4325/magpie-cli-darwin-arm64"
      sha256 "6112a7d2ae6dbf1bba2acfb3a4273081321cc10544cf3419fc11e1574f169219"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4325/magpie-cli-darwin-amd64"
      sha256 "b3169af41a3411bf04b44ca337e4e0826ca7d18184f55b1cee7c4c6bf572240a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4325/magpie-cli-linux-arm64"
      sha256 "1908986b94d6377879e3ccbd47b6190f07b3d7e699a3b2ed6d14f7a1a01653ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4325/magpie-cli-linux-amd64"
      sha256 "18a549b041b61585ce9a4581cc1fbf86f5fc4f531788abb4ff997502c2e1e6b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
