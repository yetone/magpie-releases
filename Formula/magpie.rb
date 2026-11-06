class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3172/magpie-cli-darwin-arm64"
      sha256 "203c77f6942f227f3098d5773938c5cb2e6678e375f356e3565ae2a2c40f74e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3172/magpie-cli-darwin-amd64"
      sha256 "6e37b61aa6c832c22d9e607b6a394a704933e03c51407f642423785f1143c3c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3172/magpie-cli-linux-arm64"
      sha256 "2fdde8553e390c3b4689e25f60e15c80ded58cb2625570c0e335bfdbb3b6cf14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3172/magpie-cli-linux-amd64"
      sha256 "e729822c7ecbd0b8b81b8075d51dc46dfaa5af79843b1896647b6122ad5955ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
