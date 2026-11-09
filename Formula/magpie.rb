class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3421/magpie-cli-darwin-arm64"
      sha256 "58b2f4ee7d97f59ec01697308b86c5d7910483be3f3ff3aea318ebc073b05e29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3421/magpie-cli-darwin-amd64"
      sha256 "470d3e133fa769edfdfb29fdb77094ffd1ae4b75f2b2af7f1eb2ebc10c8ff665"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3421/magpie-cli-linux-arm64"
      sha256 "5095fa9b4de239eaaae8f915f9487e9b06bb05dac7d4ef0db5c6796ad4c29106"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3421/magpie-cli-linux-amd64"
      sha256 "a082040f4ce6ee4b1fa73dbcfc3f1e735589c816684a15a983071f554aa255ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
