class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1117/magpie-cli-darwin-arm64"
      sha256 "2f5deaec72d19d74c6a810c89f968644d557f603acf51cc9cee5aed4bc7c619e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1117/magpie-cli-darwin-amd64"
      sha256 "069de5f5c8bad81af1b4c80786a638642ee01770e06d3e5dfc18b6ca2b623190"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1117/magpie-cli-linux-arm64"
      sha256 "ad47b1e254c9f4dc01fc0e3ff71cfe8e3d0a7e6a3dae854ece34640380a5d0e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1117/magpie-cli-linux-amd64"
      sha256 "eb38dafdc944bff71e313898a6f323f0ff9568ba10eedc331e66742134eac3b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
