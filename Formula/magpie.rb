class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3565/magpie-cli-darwin-arm64"
      sha256 "cfdb20e1fae4d2561875bad79b1dbd0b67ee6f3e1fcb8b7768ec9355aa8df302"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3565/magpie-cli-darwin-amd64"
      sha256 "169974ac19d375831194611034f2ea8aaa213b1ea2aed433ac7eb8e9e3b1bd56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3565/magpie-cli-linux-arm64"
      sha256 "40173ddfc16d3f895fa198417a2678034b4877b52532a83e4afbbb3c01c0a536"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3565/magpie-cli-linux-amd64"
      sha256 "de1a55900778445d94bf264056b38aa0cebed89af9b593b076cd6d6801d621c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
