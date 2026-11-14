class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4206/magpie-cli-darwin-arm64"
      sha256 "69ea35d96effdbc29b7a798bebe309540c24dfee4f707c229ae8eada092bb01d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4206/magpie-cli-darwin-amd64"
      sha256 "6efab422400f2aa6d025a98714089fc40c7e891ce75c15fa3a597582f7a7dfd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4206/magpie-cli-linux-arm64"
      sha256 "557bce72da96665dd3f519e5b60ef4c32a2fb6be21b71b5f17e55077e0567d15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4206/magpie-cli-linux-amd64"
      sha256 "7d94dd59cf64faecbdd2c177a297d3ab91dc87a0ba5f8c30ba71e8b8271447f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
