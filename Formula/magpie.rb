class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2569/magpie-cli-darwin-arm64"
      sha256 "f0671e56abe476d1c2f7f5426cbf9f459cf56ee3b763ffe2d8a63e5fd5aac29c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2569/magpie-cli-darwin-amd64"
      sha256 "dcace0a49414a9db38b8cc3cfac4462bc15ccc3d570d2e91e641185e42fc712d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2569/magpie-cli-linux-arm64"
      sha256 "f2757068067c133541e95c53fe7e77a8256dbe2614357700eb9a157be088379d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2569/magpie-cli-linux-amd64"
      sha256 "92b0a4be8cd1953aac4b0d896247f48496a6d7b6cf1f3ee47683c4613e2d8cd8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
