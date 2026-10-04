class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.893/magpie-cli-darwin-arm64"
      sha256 "ac862d203638670eade129c7529dfc068ea4e56b7a7fc7de377d1eba50ec3206"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.893/magpie-cli-darwin-amd64"
      sha256 "81a83dea777238e87d195365fa3dad428078ed281378c4fb9e0ae8127a6cbddd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.893/magpie-cli-linux-arm64"
      sha256 "bbf20a77645e85f286a08254df43dcfc90c994384a04097b81c7a19f3d99e323"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.893/magpie-cli-linux-amd64"
      sha256 "22733715c1e1464094500327b04e27f6d3aa2b0a2e258ddfb896c0009d7c3c01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
