class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3659/magpie-cli-darwin-arm64"
      sha256 "0ff174eda679ef03e20068b559b90d3a41e8a96ec18e7a927604f1cf3bdff287"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3659/magpie-cli-darwin-amd64"
      sha256 "2c0def77a07f671cfe62b57221d10c9fdea979293332059aaa7015eda98d8b12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3659/magpie-cli-linux-arm64"
      sha256 "20a6c8eb8fc038a578f1b680ef482cab5852c5ff3c71f54917647ead183b48d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3659/magpie-cli-linux-amd64"
      sha256 "4e75f45e67a7fdfeb0764b4b58d390485af70a0468514daa4eb8785c999f595f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
