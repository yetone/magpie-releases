class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4458/magpie-cli-darwin-arm64"
      sha256 "01a01a797536e6bbbd14aeb77df7fd4755139265bf384ffe9ebbd67eafe6a0d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4458/magpie-cli-darwin-amd64"
      sha256 "5a6385e9259552b5837e18a7bb4fc62eb9bc187e8680019847511a5b9648f167"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4458/magpie-cli-linux-arm64"
      sha256 "723c469b7a38e136c713fb55ed89a4c2cc8b81ebc0757843f8bcb4f644e63d9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4458/magpie-cli-linux-amd64"
      sha256 "ff3ded93d144667c394a00d573cd1356da27ab2c639f47f15139411e0569ec8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
