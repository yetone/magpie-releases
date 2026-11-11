class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3661/magpie-cli-darwin-arm64"
      sha256 "3cb1199f67884e4b0acb559aa979a27e06da4031256a74c48eb8c21c920cdf8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3661/magpie-cli-darwin-amd64"
      sha256 "b46a78c2297492dd51c2487c8d6ca5e703c3223e48b6b6324258d8a007af51d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3661/magpie-cli-linux-arm64"
      sha256 "7fa12f050314472fd308937847ac305d62771f12c7c06728afdf89c2aa0973e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3661/magpie-cli-linux-amd64"
      sha256 "2b7a53e42f09abd67e9ca29ce3477c41173d3d78fa1b7facbef168df96a6d6d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
