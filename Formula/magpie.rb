class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2681/magpie-cli-darwin-arm64"
      sha256 "a0378fdf9eb41c9d5cef2772172c2f7524a44e8cee9e217860e4b6f549821ed6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2681/magpie-cli-darwin-amd64"
      sha256 "7f449539c6d1f114fee412d37c0c6684aa9d4c43043376b4b8838edc9a6d23ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2681/magpie-cli-linux-arm64"
      sha256 "5ca0937c6f18ceecba15e93ef63d76f3e419aca97d10c7062fab1f44699a07b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2681/magpie-cli-linux-amd64"
      sha256 "d2f15e1130f75c98c80525128fe4023ad1dc3f5a3bc4abcb795b6dba56e92a59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
