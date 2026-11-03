class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2790/magpie-cli-darwin-arm64"
      sha256 "c01fea6561e94087b2285c8bd6e249347cc3c9b0eaad47153bc3143bad2a8777"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2790/magpie-cli-darwin-amd64"
      sha256 "ea92eb80d57ed7f6375c26a4e1dccd6f0cc0d20366b0c1955512de2b922c5698"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2790/magpie-cli-linux-arm64"
      sha256 "3af7193313c83002e1f7ffcdc01031796b23be4008d94a0e40bc9e705a73a4e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2790/magpie-cli-linux-amd64"
      sha256 "95f05587b6377317748c0bd237a2af137cbbf6baaf130d2ad62506765662381c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
