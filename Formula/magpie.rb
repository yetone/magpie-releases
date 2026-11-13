class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4004/magpie-cli-darwin-arm64"
      sha256 "3d3343f0ee7786ff6dfe495399fd63ef32aaa9f7d9ec19a50bb0f8f858586c79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4004/magpie-cli-darwin-amd64"
      sha256 "1b2ac9f2632070ec3ca52edcb9beb2c1d65963dfac3dfa0927560443cba75316"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4004/magpie-cli-linux-arm64"
      sha256 "bb76927eca11349be51a9287f6144b9a892403326934e396276f9c86a5d86c30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4004/magpie-cli-linux-amd64"
      sha256 "36b7cdb1e14d54cd1a7beba8d36ccab3b83f14ad631652076e09f76ce459b1e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
