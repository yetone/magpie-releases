class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3054/magpie-cli-darwin-arm64"
      sha256 "87a7347e54839c1e767c604ff82a154ff22d3392d2ac29c4ffa5ab73f66c4976"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3054/magpie-cli-darwin-amd64"
      sha256 "f3e939c4818ee43674169c7a4b6981fd6fddafb8fe3b6c455de0909f8b0b300f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3054/magpie-cli-linux-arm64"
      sha256 "5621c57c5f4dfab7586ea0bd85726da20012c2f8149daf813426fefcccc9e9a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3054/magpie-cli-linux-amd64"
      sha256 "6658ac09d6c6479578b9d1d18ead3c40e4baf74487b33ee9f2f05a45dbd22ce7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
