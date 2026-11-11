class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3754/magpie-cli-darwin-arm64"
      sha256 "eaeca1d7776205a40de6a065b8f41c845ad434aac6705afe0549568eed0c0e3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3754/magpie-cli-darwin-amd64"
      sha256 "d7f14ed74e8a6dacf07860dd2b678a38565c63824424618e1598a6331d36c7ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3754/magpie-cli-linux-arm64"
      sha256 "ed345892c691bb974be95fe7130927fba1fddbfdc0c2b7531629da8026e160df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3754/magpie-cli-linux-amd64"
      sha256 "4cdc23431d8c87460d1c5ae00ee661b613fd87ab56a655ca6a0dd911d58a3abe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
