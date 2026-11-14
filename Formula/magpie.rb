class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4177/magpie-cli-darwin-arm64"
      sha256 "b2b68aea998797e589c9eccc4efa54044d04d757f98bee3f39ec95273ebe45ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4177/magpie-cli-darwin-amd64"
      sha256 "726c7afe663308fc8440764d61193be0331e8a2a47bda3d7d87d09bbb82de56f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4177/magpie-cli-linux-arm64"
      sha256 "2b1f28bc6e4a928cba135707fd0d2a8405287eb05ef8a6db4e62ab9bec872582"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4177/magpie-cli-linux-amd64"
      sha256 "d05f9e43aeadbdc0572e689cca2b102522fd2f4d3bd52208b94a6f6d5c80b7ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
