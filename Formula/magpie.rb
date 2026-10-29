class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1983/magpie-cli-darwin-arm64"
      sha256 "f44547e3d4183af35031ce65b445c26755a9a66ad1489f8db51f5b458ff74fa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1983/magpie-cli-darwin-amd64"
      sha256 "6df7ce66f7171326a0f1e779f38d05a99c9770b9822b04f2d432b0aef07a60a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1983/magpie-cli-linux-arm64"
      sha256 "41dda0de42cdadc1586a379c50906df055898383c6a0199e1174f4f006d6cc92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1983/magpie-cli-linux-amd64"
      sha256 "e76e897de3399b396f235983a7532f42b1363683cbab95cec99b2f7fbc052f8e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
