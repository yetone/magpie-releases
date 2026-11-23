class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4700/magpie-cli-darwin-arm64"
      sha256 "6b540ed0c705a313614dcb45939eefb7a667022dee2a2ca086b40e4f969797de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4700/magpie-cli-darwin-amd64"
      sha256 "93cf16018d00cdecb67375480ab1db402c75f3278233bb9a258aed2309a6723d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4700/magpie-cli-linux-arm64"
      sha256 "6e48689a7587970c6730ca844f3f178f289d6be8c966a04c6db9e571343e4751"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4700/magpie-cli-linux-amd64"
      sha256 "8c4c256061f5970cf966c8a4db3e6d46346d04a53baa5f75fafbe9fee3ef1783"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
