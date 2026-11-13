class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4093/magpie-cli-darwin-arm64"
      sha256 "501d4156d2b797d8db33dcf3d393c9cdf5858a031d4e024d25f5fbd78b90fb0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4093/magpie-cli-darwin-amd64"
      sha256 "9eea0816a13a9fb439be7e69e56b4ef0d5f3cef92b79e9f1eab1879a9d5da3cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4093/magpie-cli-linux-arm64"
      sha256 "81a94093043eb514dbd3b98a1b65e799395a2455bdf4e195f6a05706fd5532d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4093/magpie-cli-linux-amd64"
      sha256 "138e8fd760b1260a4f016cf35cdc405acb5f2665327becd39c5f82edc6668ae0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
