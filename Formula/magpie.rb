class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3336/magpie-cli-darwin-arm64"
      sha256 "eaddd4073f03d0d976bb24d393a1d96a5c8346b6d68d01c3688eb8bccdb94334"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3336/magpie-cli-darwin-amd64"
      sha256 "a4fbdbb7e7a3581e7a22258389bfdbca652349fea591d904249863af43aec2dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3336/magpie-cli-linux-arm64"
      sha256 "d9804c7bd09580a62e641765b5539ce0e282c489a2b9363125d6e729fe688dc3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3336/magpie-cli-linux-amd64"
      sha256 "1f606bb749e396130d76dbcab497ea04b867c0d28ced5ac5e01482f57d2daa39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
