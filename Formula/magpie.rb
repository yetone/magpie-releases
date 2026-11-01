class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2600/magpie-cli-darwin-arm64"
      sha256 "b9c0726e6df68020e4cf3942860def0775fa1ef9dc112d95d58fb82e51dd4c04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2600/magpie-cli-darwin-amd64"
      sha256 "3dde7dd9742bcb8841f24ef7f5a92b2cd1d5647463162920fb39b33f56f23666"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2600/magpie-cli-linux-arm64"
      sha256 "2c6f4ebd54de3affa64ec18d12926bfbb7488fd449c8c7afd8d0c4f3ea23fe96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2600/magpie-cli-linux-amd64"
      sha256 "19ded4c7588193d3a70b547ddcce82d62b81c3ac44475b72e1e6705d9c519d7c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
