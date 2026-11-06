class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3203/magpie-cli-darwin-arm64"
      sha256 "7b743d614a99bb33e413aa3954e57a748d9aec09b9350fa02514d86ae1e0d910"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3203/magpie-cli-darwin-amd64"
      sha256 "b3551bbd4a8307ee317cbc96e9726caead3c6854bbccac70e77cdd59eee92091"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3203/magpie-cli-linux-arm64"
      sha256 "1ec2c52801138e921422ca7498cb36dc8342275f6bda981fcc13e4376e920196"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3203/magpie-cli-linux-amd64"
      sha256 "bd845670dd3fec1a9d559b3cd4adac9b9d4fb8cc0086b8b216cce33b13bef4bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
