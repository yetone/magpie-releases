class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2889/magpie-cli-darwin-arm64"
      sha256 "b0c57dafd2b3334216c8dde5fe4a8270b711cd83a8a765422b56a93759d0e66d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2889/magpie-cli-darwin-amd64"
      sha256 "41deaab61f21ddc6acbf2d79c603e82c12e6ffa27cda20d7aaaabe740e663e6e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2889/magpie-cli-linux-arm64"
      sha256 "167857a3f5eee80bcc35e9b9cb7d15d3c733e917c55c34a822dd03af042498b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2889/magpie-cli-linux-amd64"
      sha256 "9e491142cafd8659d1a73020bb02e3e44506bf1121b6a070b3e11e0263de79bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
