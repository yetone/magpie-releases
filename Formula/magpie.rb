class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5007/magpie-cli-darwin-arm64"
      sha256 "a8e2340e837f8caaca13647b031beba0d50fe330b0928ad4b2ae3bba33dc493f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5007/magpie-cli-darwin-amd64"
      sha256 "1a8908f448b703ac365ad3e38255bc3b88348f47e43d9dd6baf1685ad9cb3bec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5007/magpie-cli-linux-arm64"
      sha256 "0638b5f9b184b3bc98bc65df4ad8e193d3ba186da85923e8b4efbd95c9426732"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5007/magpie-cli-linux-amd64"
      sha256 "ee18ef90c3ac7ca114c01c487c4830d8ea6fbf41019bf1691806f0138e45fb90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
