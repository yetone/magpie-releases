class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2764/magpie-cli-darwin-arm64"
      sha256 "44adf641d4305f9ec5f68915552f235511f1f70da58be24f09dbf947338347d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2764/magpie-cli-darwin-amd64"
      sha256 "767e9a3d62ff1fb4559e72d3119112fba76e87ac4c756dfb9f65fbe0de728282"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2764/magpie-cli-linux-arm64"
      sha256 "ca97d9bca49fee97877eed0552189bb3e7b427e1f89fd06a5d2c8e71c2b4be3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2764/magpie-cli-linux-amd64"
      sha256 "60aafe460b22a25e7a0a06e3c16de0a01842e81380217961e958dea51bdf8c70"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
