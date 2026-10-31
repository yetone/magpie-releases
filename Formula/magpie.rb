class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2460/magpie-cli-darwin-arm64"
      sha256 "33b30bc7ffe20b89931f63b378e8093b1c330c6c244deb55b43c23d7cfafcba0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2460/magpie-cli-darwin-amd64"
      sha256 "f80c956735d03e2a141cc2504b060c04ea8fcd1838f62834fc329f2203abe56e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2460/magpie-cli-linux-arm64"
      sha256 "f1de7a462e6151074ee7c4f0bab64c73f05c0a87c1c553cc6ddd203203df16e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2460/magpie-cli-linux-amd64"
      sha256 "10cc7a49c03733bf6c4e6d108cdcd818e7769bfeae0a503ed38d67f8041f89c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
