class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1001/magpie-cli-darwin-arm64"
      sha256 "921b73fbd5711bb4cc629c03ad56ea1e5b4ddeb46f8ab243d1527f12f1551779"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1001/magpie-cli-darwin-amd64"
      sha256 "ceb1bb0fc67d6d4e82a92fec2ae86263e347d8528c9f0c24becad5a0e27c5a67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1001/magpie-cli-linux-arm64"
      sha256 "64890e4a8246c9652e1e68824f36702c0c3010242c553e8eb728b09d811549c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1001/magpie-cli-linux-amd64"
      sha256 "25257aa936ad1f4fc96037806976b3aae61f9bcaecc22ae77f8b9b66b4e38adb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
