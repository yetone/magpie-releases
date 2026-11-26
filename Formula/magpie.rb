class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4898/magpie-cli-darwin-arm64"
      sha256 "6f3f51c32f103719df18dc75aaf95e3f8f01771c55c196632d3d9b90d0d5c63f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4898/magpie-cli-darwin-amd64"
      sha256 "290c564c1ff8b97408e066d0118db44799e3a7bd6f825aa087098f02f26708b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4898/magpie-cli-linux-arm64"
      sha256 "8e9272913b36eba61558eb802e1a4205265cc77d7e2f8bf34542c428b22e564a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4898/magpie-cli-linux-amd64"
      sha256 "4e275276fe59afb8ffd70838278eb2a288dc5bed0e6807bf5f7654d9c960fd9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
