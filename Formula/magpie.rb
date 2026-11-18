class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4467/magpie-cli-darwin-arm64"
      sha256 "b59fc07c2f56dbd5117a31a1a07ec71c3d4003c0999463d2246593d9ddd14641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4467/magpie-cli-darwin-amd64"
      sha256 "126705271bbc1db1ae0860aeaf2bbbd530181e107bbaef22e1f5baea4dc922c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4467/magpie-cli-linux-arm64"
      sha256 "ed75c8165a8d13f1ff9fee3d29481ac395395f36a3d370df977c9011c74c4215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4467/magpie-cli-linux-amd64"
      sha256 "f0a02a0d494ba510a2e2afdc943c3b3d751d46c506091a00e2c528c0071bace2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
