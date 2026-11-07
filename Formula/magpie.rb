class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3274/magpie-cli-darwin-arm64"
      sha256 "b487465aa749f9c86b3a89084c2e402785b47862b3e07e704fd35e9dec95862c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3274/magpie-cli-darwin-amd64"
      sha256 "e843f33350728d42b712576d2176d2f433afaee13206867cc3d57532e0c6d701"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3274/magpie-cli-linux-arm64"
      sha256 "fdb90b1e25d9d2c86c057c9def60d64cbfd89e38327290aeb3e35c2b5c512f0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3274/magpie-cli-linux-amd64"
      sha256 "c633a24ae407f9345622aa23946544ada2de8719bc2c24eecb9c75700e524e55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
