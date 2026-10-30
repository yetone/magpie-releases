class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2200/magpie-cli-darwin-arm64"
      sha256 "855414e3f6227806d096cc48a364c48426ec3d23838bed66bb4fe8f66c2f429b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2200/magpie-cli-darwin-amd64"
      sha256 "189853995ea362a64f58e4a197e263f8c13deb5934af7d8e637fcb489788d64d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2200/magpie-cli-linux-arm64"
      sha256 "af8acd71aa6380ddee3bc51cf644991491732da650866662738a6f6b893546d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2200/magpie-cli-linux-amd64"
      sha256 "d91ed905ce0fd92d47203d0726ea80a65143bfef489fa56d285718205fa212c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
