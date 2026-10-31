class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2336/magpie-cli-darwin-arm64"
      sha256 "ab627cbd4a979421d12038f08c09c7aff7d1bc5cab11a9fffaf17054769172db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2336/magpie-cli-darwin-amd64"
      sha256 "624e0a21c1f3568f69fe35da07f73ce47e359ab80b96419e79a343eccb82958e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2336/magpie-cli-linux-arm64"
      sha256 "d2b087c87294cbb6bbf2bfd3a3626c543aa945fcb8af87e7c8f04a83c6a43695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2336/magpie-cli-linux-amd64"
      sha256 "d0f7cabb14d26486e2d829446fda6b20d0ee3fede9cbc2715c60e6f1a635ecff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
