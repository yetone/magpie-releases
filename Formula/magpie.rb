class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1883/magpie-cli-darwin-arm64"
      sha256 "04cc14a900d1c3fd624a90c7da5c6b1d79b0e6ff3560e3330383c70a69b2773d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1883/magpie-cli-darwin-amd64"
      sha256 "b6e1903b66611f599bb96dd3baba0143738ce6baa42897400f699af7b8760a72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1883/magpie-cli-linux-arm64"
      sha256 "ac6d091c8941d11f2ecf4dd220f391a21aa638d5eb964d4a4b6a71beafedf684"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1883/magpie-cli-linux-amd64"
      sha256 "e9255ceb0f521a49779a02db5e2078afa4dddcdd6721f0b19379fba1cfbd0edf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
