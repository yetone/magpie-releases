class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3562/magpie-cli-darwin-arm64"
      sha256 "9c7a717b72407ade7552fcd80ed574b5dc1bf802b186224ebe8db07d8866e8e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3562/magpie-cli-darwin-amd64"
      sha256 "8aaf86a3a9f1a11512a688e2416f2d749b859f063f55cb6307720a713156a3aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3562/magpie-cli-linux-arm64"
      sha256 "42f686a70476d7277bc35a05f66268c35cf7b597627745933da5f015af3bb3d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3562/magpie-cli-linux-amd64"
      sha256 "27d3d90ce163ac6f831545f51bdc9a7282994e3ea57f8583c86cd955b70c4522"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
