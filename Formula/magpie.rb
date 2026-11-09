class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3374/magpie-cli-darwin-arm64"
      sha256 "deded653e546d4e4560591adfce571e64fab989cb403341e0dfef4629b72ebc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3374/magpie-cli-darwin-amd64"
      sha256 "91922779d97c6d4a231b089ce2313fa8d94e7a31b8362b57a439bf7d85c15018"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3374/magpie-cli-linux-arm64"
      sha256 "c11815485e2a77c606f907fcd505e4a32adfd51b082680e9036a5ee779169cbc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3374/magpie-cli-linux-amd64"
      sha256 "690d6ecca530844a046a8ab8ef59bcea5b96d1df0ecad5a1f4be327db6884170"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
