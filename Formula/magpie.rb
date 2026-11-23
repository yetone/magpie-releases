class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4698/magpie-cli-darwin-arm64"
      sha256 "a3e4dbb7d61c8cd791ff073675de094d7a02862c8788b5a471865b13fc393b5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4698/magpie-cli-darwin-amd64"
      sha256 "6fc261d1353b70d11519c156c2e60b131d8052547149fc502c382a9882bbf1ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4698/magpie-cli-linux-arm64"
      sha256 "211011d93737f03cff890c73452620171a2606a88926ea4b2a42796687b7b36e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4698/magpie-cli-linux-amd64"
      sha256 "7737888dccd188c1d5776bcdf5a2ffe214ae84eee44c2f762b74e4fc4ac8d925"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
