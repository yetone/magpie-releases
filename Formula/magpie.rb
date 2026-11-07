class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3293/magpie-cli-darwin-arm64"
      sha256 "43aac782a18cf2384b58f0b82cef50ff8d6706308851fd5fc3e1f371847a2203"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3293/magpie-cli-darwin-amd64"
      sha256 "a8643fe74c1efb536f74d92426e45b03f58b270c87a63820593198714554d8f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3293/magpie-cli-linux-arm64"
      sha256 "490e04776b5fcb2b0b20e6539fea83748da308932fd1b4fb4c900dd426f096ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3293/magpie-cli-linux-amd64"
      sha256 "6e2e9c92ac9a3383b4a46d1e141bcfe5132bc1b6799e32441922ce6a3d858e54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
