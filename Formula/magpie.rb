class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3127/magpie-cli-darwin-arm64"
      sha256 "083c74f3d9d9c987cbec14320d322e94d3cf0eadfea5f2f064df8d2fd882bd9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3127/magpie-cli-darwin-amd64"
      sha256 "b29d88c57be5d9727b4783a2d0dae34987d7423812c4d10cbe964f0aa5a72f96"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3127/magpie-cli-linux-arm64"
      sha256 "ccfe2a1ac9f3a20222f35e74e91f5899b4f11693bcf8f7b69ff60e303673fe85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3127/magpie-cli-linux-amd64"
      sha256 "54e823bc5ae75c03a70a02ed160198239a1741c6fc8549bd8eaad4182b433ed2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
