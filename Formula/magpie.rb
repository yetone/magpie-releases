class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4588/magpie-cli-darwin-arm64"
      sha256 "f2ecd8ea302413cacf3034df960e44e5a0fcb167288a3d151e92cfb347957e17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4588/magpie-cli-darwin-amd64"
      sha256 "c5d22ffe43bc90f30a11d3e673a111647d8f4eca000feba28621175a97288ea9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4588/magpie-cli-linux-arm64"
      sha256 "c16ba738cc1458e25e58b5016e95e53c45aa8d34ba262aa867dd214d14773a67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4588/magpie-cli-linux-amd64"
      sha256 "7c29650e89e5f49235f18320a02c9fc337bfb1cdc19b46b4271df79dd83d9e61"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
