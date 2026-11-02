class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2727/magpie-cli-darwin-arm64"
      sha256 "ee6ae01d9d7448d06b9e461afab4c11c8ceb26c19d278b33da97839de826eeae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2727/magpie-cli-darwin-amd64"
      sha256 "3db6e0ed01a2ff487c348d014c1ae82f3bab0da7abb6fb702cfd8a7662f30dca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2727/magpie-cli-linux-arm64"
      sha256 "107715bcca3cb50846d6ac6fffd25aa1c2f45facfcd2ead9074c8202c382c9e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2727/magpie-cli-linux-amd64"
      sha256 "15829604404c19a91aaee3f7d27cc5d8d43b66d36b4a8d7a24dca31f7371efbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
