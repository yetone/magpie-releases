class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2770/magpie-cli-darwin-arm64"
      sha256 "6ae194eb18df80419e6b58ca518b427a28b5952a4b102c8307179c1a9fbea496"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2770/magpie-cli-darwin-amd64"
      sha256 "257aa179d325f3431fdb796c7e96a3bb32a32bca2faf38ba7b741bfb04b4db0d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2770/magpie-cli-linux-arm64"
      sha256 "52d2da9ae56c306cab169531ffc807d020e8037dfc90e310bb3b3e1a5a6050d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2770/magpie-cli-linux-amd64"
      sha256 "bede9eb9afb9182286d1dfeafdb6fffe62663eacaec8bb8a36e9e1d85a553922"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
