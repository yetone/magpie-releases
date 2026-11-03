class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2846/magpie-cli-darwin-arm64"
      sha256 "136e876f85643c0ef7b15475c1662a3c424ff7ba9dda9383f733606386d9d636"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2846/magpie-cli-darwin-amd64"
      sha256 "e1cfe5b0edc21b4647a1ca531f1ff3ebac961141e2903e9d02fe6ba0fafc3775"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2846/magpie-cli-linux-arm64"
      sha256 "d9b1bce386200f2a0870e4a2ed258f78463e4ae1ecc79cb5f4d003003b2a41b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2846/magpie-cli-linux-amd64"
      sha256 "e7cdd770b398eb1cc03164214e7265d56f6bef0301f62aa25c4ec3ae335821c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
