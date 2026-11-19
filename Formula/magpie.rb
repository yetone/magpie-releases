class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4564/magpie-cli-darwin-arm64"
      sha256 "458167566de7779c20d8b827f432ff3a8c751cdf204ed3c7c683569bb1b546b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4564/magpie-cli-darwin-amd64"
      sha256 "4b9441b53969c1604f087a9ba615ac5d7c1800eabe53792324db1f78cac0e2d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4564/magpie-cli-linux-arm64"
      sha256 "76fc1898a98820bbffcd7486a0880460c4544c4c9d17231ecae2590b896b561f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4564/magpie-cli-linux-amd64"
      sha256 "c472047604337ef24dca680f8013e97c31a242ea8de72d92426831693154680a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
