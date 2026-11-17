class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4400/magpie-cli-darwin-arm64"
      sha256 "3ac0d2d787a06eff1beca97e0b08e3ae4a7ea696bf79016327f174c7135e2c09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4400/magpie-cli-darwin-amd64"
      sha256 "6ca45f95667a7e1f73625aaf324ebdd31ef45f4f49a73fab2341658563a01311"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4400/magpie-cli-linux-arm64"
      sha256 "004c10c44ddbd4fc16638e6d423ce041aba8d75cdcf54961b26b865a0eee9aee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4400/magpie-cli-linux-amd64"
      sha256 "bad92551821ad4f27a308338c8e44ecca0f0d5c1ae4b18a2a901417d8c397398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
