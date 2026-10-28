class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1929/magpie-cli-darwin-arm64"
      sha256 "e55c636ab5fde2b68419b7c4e21ab71194176db1f2bac9d184e2edf0bb17ce69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1929/magpie-cli-darwin-amd64"
      sha256 "5d82f91cd7c87e72cf9aa613e7518f652eca3737b8153d09ed6489fb6a8f8054"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1929/magpie-cli-linux-arm64"
      sha256 "f07ea6472fde73f34017da79dd1740421e7254fb63c4a3d8d7687a5795803ff4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1929/magpie-cli-linux-amd64"
      sha256 "1a1a1473ef3802275f89db8d2123c3658063fbedc59df05c762dc1b2229aed60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
