class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3343/magpie-cli-darwin-arm64"
      sha256 "56338334ae84c0f2df846dcbac7977595271c826c86a7d2ffde624a3d9af799a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3343/magpie-cli-darwin-amd64"
      sha256 "61dd03b8d78fd565380ffdef0ea1f114b163130f2efe864222ddf44832b0290a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3343/magpie-cli-linux-arm64"
      sha256 "c2e4a6db8f5e1fe3c3cd88091ebea97e501a06de0c4bcf204d0e474af33f290f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3343/magpie-cli-linux-amd64"
      sha256 "df8140919f5b10600f7903ed884ed77f7ced0e3de31792f589929ef110156d6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
