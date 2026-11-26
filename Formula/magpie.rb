class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4888/magpie-cli-darwin-arm64"
      sha256 "149e3fc48cf046eb2c4288409508c52e4b6d3834a7b1da8eea0791980597162e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4888/magpie-cli-darwin-amd64"
      sha256 "91ca0c771d7cfe504032911ee0b80d8e5097484e06e18481c85b542bb2acaa64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4888/magpie-cli-linux-arm64"
      sha256 "2f9629a1ba31721b5572f8a15530f785322f9563fc3bcbc664972791a37d0086"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4888/magpie-cli-linux-amd64"
      sha256 "b341db3ffbe8c192b127bbb8d0ef0c36c396e0ed8296af7ae54dbb588f9d5076"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
