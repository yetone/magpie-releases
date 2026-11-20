class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4578/magpie-cli-darwin-arm64"
      sha256 "7d1fedb42f19edc5b5f1d15f2f9768eed51ce58d23a705c5168e341bd8168786"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4578/magpie-cli-darwin-amd64"
      sha256 "e6857a2b742afdb4b16f1f543c4cb8c6c2b55df3f9600a30b5018cebcd631fd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4578/magpie-cli-linux-arm64"
      sha256 "409c2aa4ca6a62d4b84dc1bcf27e9fa025be86e2b86397da2b995a37279ac909"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4578/magpie-cli-linux-amd64"
      sha256 "724d7fde160f6bc33aa395de87ce1b0ef08bace91d95e5d626e5d9f82b5f6162"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
