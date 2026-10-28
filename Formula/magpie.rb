class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1853/magpie-cli-darwin-arm64"
      sha256 "b7613033b7ea94871e848da35ed20cd604fc7523be313d4167b968a1c75bde9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1853/magpie-cli-darwin-amd64"
      sha256 "b43fc6faf20b61c2b1fbc2fb785bab2ba92d609a92d809a48d5fa52cf66ad5b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1853/magpie-cli-linux-arm64"
      sha256 "ce8711710675cd4e4bbb039573e5db14b93f60792c342d722296acdb2c9e6f3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1853/magpie-cli-linux-amd64"
      sha256 "7fd91e201f4a43a5d9ebb4cec70e63cc986e7c08f546ef7587ae5e8e70177b94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
