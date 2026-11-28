class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5042/magpie-cli-darwin-arm64"
      sha256 "4d23f3576d09d233cc9303fec3c0402b599f0854c6317650b02d7939977d033f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5042/magpie-cli-darwin-amd64"
      sha256 "c71a867b8c8dc83ce3f88560253af3d928991136960dff2571c94f16bab49b2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5042/magpie-cli-linux-arm64"
      sha256 "20865778b442add49e14639182385a71d5069508f521e8abbd0487fcb24603bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5042/magpie-cli-linux-amd64"
      sha256 "522e3793b1d23759c4bc85e3b3a1720ab7257da6dd2eaee7719d348b7a5743da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
