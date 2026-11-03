class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2865/magpie-cli-darwin-arm64"
      sha256 "e2e1e9149e423916781ceb8bbb935ea6f4810dfa960126ba70b44b2284b79aaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2865/magpie-cli-darwin-amd64"
      sha256 "ce337aa6e09c2b9a597ec78708bf8c4b17801ef65333ccc3ff3253ac4e11738f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2865/magpie-cli-linux-arm64"
      sha256 "727c1ded79bf0b4757c7ba044a992561313b694b5051f8c45d07734076240c12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2865/magpie-cli-linux-amd64"
      sha256 "a88c09338b17dca67004a825c97c32deef1109aa47487c606904f9d73192ba4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
