class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2263/magpie-cli-darwin-arm64"
      sha256 "22db916355362265a3033b5fd17f16cb2666068630d6d4b934322d4ee5a5f5c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2263/magpie-cli-darwin-amd64"
      sha256 "9ee58f42024d77468ce0d410843dcc7a0daa1ced262460f5734741f883821002"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2263/magpie-cli-linux-arm64"
      sha256 "364600d7080589cef65c2c3cf2d2db0d71b1b41212517b8d201e3b7ba8557778"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2263/magpie-cli-linux-amd64"
      sha256 "ac6755fc2820c3b151a45f4cac78f73c783c75540185bc74ba4061de7dafe43d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
