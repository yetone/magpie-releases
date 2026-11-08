class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3314/magpie-cli-darwin-arm64"
      sha256 "5e25e4981c85c51ebf24bf69144aad86fa1d57f0a001729d38017aafd785b216"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3314/magpie-cli-darwin-amd64"
      sha256 "9d41f5c9c3d1b82afc8d4f6a312fcaaaa3aa5a29ee00bb87a87db7ca70a6a654"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3314/magpie-cli-linux-arm64"
      sha256 "ae75a4997f2d181f79f0fa131738a7891a1b506fec8ce7ea09dd400bfe7ee6fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3314/magpie-cli-linux-amd64"
      sha256 "a71a6bedb40d2eaefa0b8b14ac2ca4caf24fd625714511cb0b07d5d435c8ce93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
