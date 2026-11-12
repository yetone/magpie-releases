class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3940/magpie-cli-darwin-arm64"
      sha256 "e202809f03f41178c63b210f55ddf64c7ca85ac77709352d376431bfed0c7a37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3940/magpie-cli-darwin-amd64"
      sha256 "bb1c85e32282ff3b7851aeb4303cb70f438e0d130ee04de91c6467bbc664589d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3940/magpie-cli-linux-arm64"
      sha256 "ee691c31f4f0d0e06f1b4b51dd162755fcfde9fc2f7624d59c3c3b2d88f7d724"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3940/magpie-cli-linux-amd64"
      sha256 "0f40faf6a1cec729e69b28968ab3ef9440bdf5793cb9124ddec7af606c79dba0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
