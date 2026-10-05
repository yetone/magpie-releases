class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1018/magpie-cli-darwin-arm64"
      sha256 "d12cd33084e5786c347fefe6ed24172a6d299d7c941b29b0b349f76fc945f026"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1018/magpie-cli-darwin-amd64"
      sha256 "d05ecd0c9ad2331723b215b3dfe23d9d2ecd09815f8d21f1a3aa2aa7fb731e7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1018/magpie-cli-linux-arm64"
      sha256 "b679181e0b3c3ae1be4bd7c651865ba82a45227aab515073836e44cb72c8a3f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1018/magpie-cli-linux-amd64"
      sha256 "2c45494863c74b3086ba827ee1305c7d1bc53986f00df338376487ca7b854c87"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
