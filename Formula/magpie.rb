class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4157/magpie-cli-darwin-arm64"
      sha256 "5f06cf88fd24470b66e137741aaaadb7fb7e1696bb9ec045850984a61f523b49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4157/magpie-cli-darwin-amd64"
      sha256 "3d5d770a78bfcb7efecc410f31ae4745cba017a98beab3db549ddf7e04970d03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4157/magpie-cli-linux-arm64"
      sha256 "425782d998be478541ea8c23292771a02c174b95ac8e35dd7fe9e8819f2f3b1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4157/magpie-cli-linux-amd64"
      sha256 "599a7ca25b8b3688138d3c58977a43c1862a6c217aaa9347a0a589e507ad66e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
