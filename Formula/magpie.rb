class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4055/magpie-cli-darwin-arm64"
      sha256 "4679d124f6a356f86a88679d500fd35b0194a7ab2bb26ebe90f60be06b519306"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4055/magpie-cli-darwin-amd64"
      sha256 "9b8d7d6fdadf7721f501aa9e86967ec7cdffc7d16c56d91973bcffd6ac0eea79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4055/magpie-cli-linux-arm64"
      sha256 "723f39bb21300ae8aacf20818c195600079521d55362e716e203f00d864025ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4055/magpie-cli-linux-amd64"
      sha256 "2c74e385b7a3fa8da4af2af0de713d7f13594092f4c3f76962464b6b7ad0235b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
