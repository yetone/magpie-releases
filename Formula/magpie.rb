class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3017/magpie-cli-darwin-arm64"
      sha256 "49db306938cdf968444f72eedd5d65cfcdebd243450ec562e06013c14d914953"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3017/magpie-cli-darwin-amd64"
      sha256 "cf39d8eaf676a81019c544278d59f4e64991aaeb3cafd43a2ed611ac8df51dfe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3017/magpie-cli-linux-arm64"
      sha256 "aa3fd4157b20526f2c41f541f2b89ca7743ca53c01efbc022dd377bc83a2b334"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3017/magpie-cli-linux-amd64"
      sha256 "a053b0ac14bab0279c627904cecf04f07cf3fc739deadf7098f63755fb6dc47c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
