class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2069/magpie-cli-darwin-arm64"
      sha256 "23c322a97232ca8bb52a51e14b1b38986bc2e9584b0c5e154035a2b92080b741"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2069/magpie-cli-darwin-amd64"
      sha256 "1701892cecbc04bac3f6b9e05cc8efcd879124ba95f3c3877c3d89b825a3acdb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2069/magpie-cli-linux-arm64"
      sha256 "35c7162009ed470e6ed43e092ad21173daef0e84e1fb961748c3ffac2787e275"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2069/magpie-cli-linux-amd64"
      sha256 "efb8c93062973d351e72c47a70085ece718cb93ab70f653a5995652a7963ce9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
