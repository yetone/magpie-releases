class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4173/magpie-cli-darwin-arm64"
      sha256 "bef9c7b1f49fbc0ee6213ded51ceff5d384d265d1e24361fb66239810ed64cd7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4173/magpie-cli-darwin-amd64"
      sha256 "93c12709879f0c8ac5cf0099f6c78f887ff5f913a512acaa2b94050d7f94e936"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4173/magpie-cli-linux-arm64"
      sha256 "e75aded365bc453b429d39019437b0a8179b8a89a8a7d29622b869cfe211b55d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4173/magpie-cli-linux-amd64"
      sha256 "b0ba391e079e09adcbe453de6cdb1f133a6ea58b75e6b950e1737076cc72e094"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
