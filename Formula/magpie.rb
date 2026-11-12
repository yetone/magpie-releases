class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3917/magpie-cli-darwin-arm64"
      sha256 "56b5d930a909a2986b63f8cc204c25f455d3816f6af2af40b92d08cb5b6683d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3917/magpie-cli-darwin-amd64"
      sha256 "0beac6935eb5e0398ad3c4806da2bb4a673342dac57fbe0fe9b7768a48cbb6d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3917/magpie-cli-linux-arm64"
      sha256 "49c35e49b44d67b6e03ed87cb83f38c637332f419137dac97e6c7fadd3069d95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3917/magpie-cli-linux-amd64"
      sha256 "d2016cfd235686405f4890ef3d863fa83bbc592c2331303b3ac086c57c180bb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
