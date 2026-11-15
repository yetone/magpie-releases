class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4257/magpie-cli-darwin-arm64"
      sha256 "6ca85f701bd1effdf339b683fb5ee4174c9d7ea546f881f1ac56ab2ca4893ca2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4257/magpie-cli-darwin-amd64"
      sha256 "9ec11c4aa4c523cecb22e05f2046657bb42d9d77775c31708f8a0758f2d405dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4257/magpie-cli-linux-arm64"
      sha256 "5a635f85618d0632d5acdbd460e1a60ac897793f1c15dd3eeb4307131ac32f2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4257/magpie-cli-linux-amd64"
      sha256 "cd9a71fb17de02e58caa033f75a0b21b7d85e075b8d9cab7d39a12eb1b09fd46"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
