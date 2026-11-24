class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4757/magpie-cli-darwin-arm64"
      sha256 "a97b095b5bf306e186b50113f51e75cdb4047057cffc1ee27bd7fdc707e2d47d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4757/magpie-cli-darwin-amd64"
      sha256 "7becc2f79747a7fe0e3ad2f6f48e5ca688516135445a01720048c4d56f33287d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4757/magpie-cli-linux-arm64"
      sha256 "3e9b462e6746c9336b6f1855b5d6ae0cd9b1c357cbf4838c3f3ab3354d34fcc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4757/magpie-cli-linux-amd64"
      sha256 "1553d4a88d62d5d849152374752bfee142d172cd878cc0cafe8546b6666cdc81"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
