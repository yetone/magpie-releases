class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3503/magpie-cli-darwin-arm64"
      sha256 "b50432b05d52929b59c91a80e68e4e5fdb295b545afdc1483590ad0317309a15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3503/magpie-cli-darwin-amd64"
      sha256 "cc7ba9c1dc3e0946b533868ea3a15e98ba13a72bf43dde80fed03bbec06ef70a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3503/magpie-cli-linux-arm64"
      sha256 "2b38f1f2b830ed64b4f82085cb578dea1b586edda27db9413c463cabf888ef84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3503/magpie-cli-linux-amd64"
      sha256 "500d0bb88abe34290a68da7a577ff33551136a43991db4d0ff926e05d4047ff7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
