class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4689/magpie-cli-darwin-arm64"
      sha256 "bc0467e3878292adba109634313254077c8d7579bb78cf30afcda7eb2cb56a10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4689/magpie-cli-darwin-amd64"
      sha256 "b51f6bbae1ebc941d4ea3eaccc94babfcc31c6a87da4cceceadc7deff1b74537"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4689/magpie-cli-linux-arm64"
      sha256 "f263996b99ee5fbd0beec4a8f75c49771e6060dca752e94bbc29330bf273156b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4689/magpie-cli-linux-amd64"
      sha256 "82a3c9a1b63465c553cb2a9d3337c9b722fcbc775ef4a59cb48f944cc66bf8d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
