class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2705/magpie-cli-darwin-arm64"
      sha256 "d824cf0ff6260275826702725a1f04cffe682551184af4497495f5d83559c683"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2705/magpie-cli-darwin-amd64"
      sha256 "775102a3d2e56fc22635b2020e4e2801a0f1c05b70aaf159ed917339ac4ba7d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2705/magpie-cli-linux-arm64"
      sha256 "34ed1d4c1e332d62507b99214bd9c2e52a9e8de8cccb07c6d42475b03eb02182"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2705/magpie-cli-linux-amd64"
      sha256 "1a6b8b847b8b2e6381ca0c5460232537234e7b8776911ca424dc0b01c5d7b3ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
