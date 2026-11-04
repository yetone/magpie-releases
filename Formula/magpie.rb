class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2915/magpie-cli-darwin-arm64"
      sha256 "6aa9b8fdd75dbe1d96e6bfeea07046b8eac8fabdacbc77dfde37b68d6c4700d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2915/magpie-cli-darwin-amd64"
      sha256 "38eacd8066b9e76df2a3b28cc8eccba5bfdfd26ed7680b48d35ace9cdacfb95c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2915/magpie-cli-linux-arm64"
      sha256 "0280c0b490130c7448cd60bf41a7a398839212544b2fdbee21a13a4cea10ca82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2915/magpie-cli-linux-amd64"
      sha256 "ed63c5021ad475063402ddfdcb0ccdf97131b39362f6cb607bec7a5d77db8dad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
