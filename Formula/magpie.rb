class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4525/magpie-cli-darwin-arm64"
      sha256 "5c5e64721daaa6842d0e2649856258667312edb735b55337bce7b79bb2297a69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4525/magpie-cli-darwin-amd64"
      sha256 "3b41b9352c1ee267e31ebb4ec018f4fd826c80e71365caf25dfe07d474f5a48e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4525/magpie-cli-linux-arm64"
      sha256 "bd67ba51b1ddfba5a81f04350613547ffdd3efdf4ecf91948ee44d5b77cf88a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4525/magpie-cli-linux-amd64"
      sha256 "b1db152f485e65383c794d1aad91566d647ae4bfdb2e963446bc6205eabab676"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
