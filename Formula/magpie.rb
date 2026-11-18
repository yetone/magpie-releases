class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4494/magpie-cli-darwin-arm64"
      sha256 "7ecb9d2930068ebd569a04035ac577216206d70174053905a4e7f84feecc67d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4494/magpie-cli-darwin-amd64"
      sha256 "e90dc856ea163354d743c62155eee82aae38d81f35c35a47bf82f17c74e0d0e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4494/magpie-cli-linux-arm64"
      sha256 "4236ecc01f185a0bb07a3e7887225b8f30d50cd6865bc4ffa68cbf07e7c27257"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4494/magpie-cli-linux-amd64"
      sha256 "8ee2d5dabfb2c931932c69e729a117abbb84ccb899e8ab7439d3504d7d32b9cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
