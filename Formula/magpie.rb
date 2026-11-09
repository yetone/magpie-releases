class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3438/magpie-cli-darwin-arm64"
      sha256 "8fe8fb0bda971479d265b4e15ab5cefb3c848635880a2db767d652c43aced349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3438/magpie-cli-darwin-amd64"
      sha256 "b627587bbba2bd4f8395c3d03356594756fe8834c04efaa467b87284c364b085"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3438/magpie-cli-linux-arm64"
      sha256 "25db29c93674bb84f34b0990a6fd5dbbed6d510ea7b581292149a08d829adc1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3438/magpie-cli-linux-amd64"
      sha256 "c06fb5583d44640013587f9f7b5dc6ee84b924a7e52bd43035ff8a0f2f3e7932"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
