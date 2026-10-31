class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2433/magpie-cli-darwin-arm64"
      sha256 "9bce6b805dd08899a3069605c74b521ab227e278dd48b46642d90feb0b8cc012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2433/magpie-cli-darwin-amd64"
      sha256 "5860bfdc233cba73016f47c41f265f6468e3cca68aac4c5357dec851352bb137"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2433/magpie-cli-linux-arm64"
      sha256 "c85637bc1bf3d4bc8e4c83742b2b5dddbc910c4c4fc2ddccf96990c9bc676969"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2433/magpie-cli-linux-amd64"
      sha256 "fa4631308f688deed41a9868daf8118797e5c031d9bb742ad04e10cdceff8300"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
