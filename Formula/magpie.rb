class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5015/magpie-cli-darwin-arm64"
      sha256 "107e27ac5f7145529b33b42db31c80d026f1bf3296396f1582e2b900c3c810d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5015/magpie-cli-darwin-amd64"
      sha256 "910ff924532b47e5625f763cbebc2a87c04e13e2185f551c5012745be5f80804"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5015/magpie-cli-linux-arm64"
      sha256 "70c29a5a589a731be4c78ed51cb23b1d0d6373ce88aa0743b69e50149b1a74e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5015/magpie-cli-linux-amd64"
      sha256 "3a1fc04ee4efaa5d5a60c24a45941b7ff323d1b7f897ddd6d951664799d7cdf5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
