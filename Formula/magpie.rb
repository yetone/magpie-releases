class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2528/magpie-cli-darwin-arm64"
      sha256 "b555f4928270683046adce0ed0c371f28bef003293e61656cd5fb561b564eae3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2528/magpie-cli-darwin-amd64"
      sha256 "9c4475e3ae7fa33cb73f864b85cbc82861f527a82ba33e0db81da8bf090b4258"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2528/magpie-cli-linux-arm64"
      sha256 "3d1879d76f741c06099fa2a4dad16df798405e4c4ffd14ac57e0f5122f49c1b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2528/magpie-cli-linux-amd64"
      sha256 "d25250b0de98fccd8c0230211dcdb0e95c765f1da8f9bf1911365791b62e5767"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
