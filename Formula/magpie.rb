class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2635/magpie-cli-darwin-arm64"
      sha256 "5ff715bde57d10fa253702c065bed27c414882b795fc0a2df2b5761e58f82921"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2635/magpie-cli-darwin-amd64"
      sha256 "f170bf31077c88d706f1528fc74bdd5108176ca221cb03c34417e302ea7555e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2635/magpie-cli-linux-arm64"
      sha256 "2e470ed6b68cbacd3bd75f25f8f5bb1115e8260e585779473795b725ff09e88c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2635/magpie-cli-linux-amd64"
      sha256 "ac15c1e1d22a37e18c4e0af9c9bb8b0be1f10c684b343558e663f3482b2ca4cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
