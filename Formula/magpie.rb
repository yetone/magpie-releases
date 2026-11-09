class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3367/magpie-cli-darwin-arm64"
      sha256 "7a0bf44d5b28764c6396cf4f7761d44c55447ab4eaeee32ac3702b8e3604e4c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3367/magpie-cli-darwin-amd64"
      sha256 "f763f35e71459b5b2bce3216a6a965413bcc6f1676de3f5b3648ea133af8ab54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3367/magpie-cli-linux-arm64"
      sha256 "8839ec62ea6b9f2477c996ce8e4bad0422c3d697c4b4f774a07a0688a47f1135"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3367/magpie-cli-linux-amd64"
      sha256 "69310161cd1848448e3dd81dfffc7dbdb8fd7d4c6e55d52e1092d44fae81375f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
