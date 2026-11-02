class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2678/magpie-cli-darwin-arm64"
      sha256 "acfeb93fcb6813b9cfd00a86bd2792eeec14d7d2528306072ecfe667b72873af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2678/magpie-cli-darwin-amd64"
      sha256 "27602fa7fcbdfcda2447623e5e6d53b4a496bf099fc9dbcc8c42b3a4679c1de2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2678/magpie-cli-linux-arm64"
      sha256 "c2fcfc808be0c13193a37b192f5dbe96f8033f88bb0099338fbb9170316e66fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2678/magpie-cli-linux-amd64"
      sha256 "01098ca341e8cd009b3482b9998c697d46152848af9f42e2bc871977685c2f15"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
