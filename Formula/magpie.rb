class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3221/magpie-cli-darwin-arm64"
      sha256 "2a24af922ab1dfba407b67d5ecf4c71c55c77da4e6327e2df0e76fcda1df796a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3221/magpie-cli-darwin-amd64"
      sha256 "6175a55e5ea403f515b23faa43f24bea7c51f31c7d6f723984a5221b4543d69a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3221/magpie-cli-linux-arm64"
      sha256 "1f6cb3e2263ce5ecf55d6e14e4bba2e81b1de24a50509b498dc85580d2419a10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3221/magpie-cli-linux-amd64"
      sha256 "806478ab6297c1a6a9bff03b0892a4dddae211c7db24d0da677c736f208bc3d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
