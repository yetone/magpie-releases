class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2116/magpie-cli-darwin-arm64"
      sha256 "aa0d8f30f543e8b154bc3ada1e242cbd738656522ee1b44f45d70919d908f2ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2116/magpie-cli-darwin-amd64"
      sha256 "4757f5204a4c84d74af06a38b0e793758afa34b0036cfc6f2d09049179c4da7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2116/magpie-cli-linux-arm64"
      sha256 "fb351b94e597da100e8daea945bcea91d5b15113e29ee63c61d5f5703f8da0f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2116/magpie-cli-linux-amd64"
      sha256 "a1087287d94a3a5590860004473ac5a1db01788fb3ec140524cec3aa8abdfc50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
