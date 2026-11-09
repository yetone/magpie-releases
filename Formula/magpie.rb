class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3357/magpie-cli-darwin-arm64"
      sha256 "99a19a5baf3117b3a66b73a024ccb2cd3c4c1268866ac3b987f9cca35eb9d3d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3357/magpie-cli-darwin-amd64"
      sha256 "3d51bb69cc8babe9080c5ba6c00c7cf2fcf8877d8281a30dc28d80e77293e4e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3357/magpie-cli-linux-arm64"
      sha256 "24dcf7e777ba7f6c3b4b0cfb65e021f4daccc5661522c49c6c4db7715ef028e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3357/magpie-cli-linux-amd64"
      sha256 "a706225e8f9d412121547a4f51af794493250b1a0b5397aa73aef836b1bde193"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
