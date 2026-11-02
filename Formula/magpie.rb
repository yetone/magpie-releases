class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2739/magpie-cli-darwin-arm64"
      sha256 "0733113936a085b737c96eb4754bf40e69f86b209a6c1e205234efcb88c2740e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2739/magpie-cli-darwin-amd64"
      sha256 "01742e304424f067780c35e15e31ee29778623693cb7c415ad199463fc1758a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2739/magpie-cli-linux-arm64"
      sha256 "4ca9cc0091e628f468e4b7c6b2b39d0d0827b3b369e252de0b355de4e2b6b609"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2739/magpie-cli-linux-amd64"
      sha256 "2fcc412ea52e4e9c254652872a466f2f92d5484a1a12e539a668fcbde38aa9b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
