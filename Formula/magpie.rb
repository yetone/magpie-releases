class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2328/magpie-cli-darwin-arm64"
      sha256 "8c6d6ddbcc223a229225bd16267cd91e1619c7d3eef08d6936184d4bb99769df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2328/magpie-cli-darwin-amd64"
      sha256 "233c269129653c0f42f6da3bc59e9dce51024b350dbffac10f91827184d2f6f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2328/magpie-cli-linux-arm64"
      sha256 "75781fddc8550f1c8c8185eb5db4f3c02c29215a5067c33d371fa5e2f177d96c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2328/magpie-cli-linux-amd64"
      sha256 "6f6b5d1c5b75f91753a7f1ac94e9ce10442bccb94072f890cd2e7e993657b9dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
