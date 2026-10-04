class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.898/magpie-cli-darwin-arm64"
      sha256 "613ac96b360ce5a012a042d0cbcae2f03bc7ae5f5c41d170c78c42a1f9c05b1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.898/magpie-cli-darwin-amd64"
      sha256 "7157779623a58173b87638d841f985e140ebf9ee0f8cb9b954abb790a280548a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.898/magpie-cli-linux-arm64"
      sha256 "0c67269cdf741b4bf2465d71ba66c580cd5b2d76381186c6da76cee1149f7ac9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.898/magpie-cli-linux-amd64"
      sha256 "b9fc3bc34b71d1ac170b6a902e748c3fcedce8196d0e2e917d684ee5ea646a30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
