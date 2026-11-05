class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3003/magpie-cli-darwin-arm64"
      sha256 "bd50479a77649f4a0a9644caa55c365a2223a7b104b6154cb3613fbccb338da4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3003/magpie-cli-darwin-amd64"
      sha256 "06331e5a9c072748a8a7d14bb20105b2c015612ab6fffb36faa74b3d25e4b528"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3003/magpie-cli-linux-arm64"
      sha256 "5240196195f125843f0743afee29fd9757d4e746c70e7ba8d921cdeab05a612c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3003/magpie-cli-linux-amd64"
      sha256 "ed4765cbb84b0d0498272816f493911a4565c4b672b65009c1ec2c7ea0ed9249"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
