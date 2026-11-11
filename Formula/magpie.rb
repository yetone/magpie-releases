class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3663/magpie-cli-darwin-arm64"
      sha256 "a25f81a629114e280ea29bcd080985be07d7be14753ea44ee62ab2470b48cf7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3663/magpie-cli-darwin-amd64"
      sha256 "f3da663cddc6d4ffad988086520700b980e828e2c07717730e0a822b5da95e07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3663/magpie-cli-linux-arm64"
      sha256 "18fd5f80f920e0484ef86306f97f71dd85fd2e38c9b2b972d072383ab7292546"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3663/magpie-cli-linux-amd64"
      sha256 "13fb962657055970b3e4841f6d86eec54eae8f70df7fcd1e92fea7c54b1dfdbc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
