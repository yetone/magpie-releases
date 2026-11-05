class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3065/magpie-cli-darwin-arm64"
      sha256 "b70872a29dd7dcfc7b166b4dead6e583d2a5f0df510561f6f1ba20157192c1f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3065/magpie-cli-darwin-amd64"
      sha256 "c7ae469ef250d29727e91fbac1258ae6ff6457ffc03a4816e5da214ba5f5a4fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3065/magpie-cli-linux-arm64"
      sha256 "b95f234858c4a25685849f49ccaa127216c1a033a84c44a853b015fe54d67eb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3065/magpie-cli-linux-amd64"
      sha256 "03ed3292f80775b16ab09eb9a1f46182e36792d16ab91465be49f67b6771c6d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
