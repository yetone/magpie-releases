class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4107/magpie-cli-darwin-arm64"
      sha256 "a30e254b400f78a28ff279b5afaacbd1a43751a2258e3864ef41feacefd22225"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4107/magpie-cli-darwin-amd64"
      sha256 "07b57fb9c41be8d8d555616428a2eddb93693b0b44675166d9a1771e419a6a32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4107/magpie-cli-linux-arm64"
      sha256 "4ecf849844317c35a16ff6d6d5efa71c0ade022a674ca678e51c2da961c6cd6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4107/magpie-cli-linux-amd64"
      sha256 "87139c0293b5f31d10cbdb59f285f4f3d37f69c955b2e2e404cae92f20546ca9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
