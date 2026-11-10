class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3626/magpie-cli-darwin-arm64"
      sha256 "a5ed47e741b3d193ec017017465943169db15bf00f0704df6ead73c6c897c530"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3626/magpie-cli-darwin-amd64"
      sha256 "d73b1dbfa8ff4b80a68cac5c8ef6c4d0fd0a44b23478c4b537e91c4187c38cfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3626/magpie-cli-linux-arm64"
      sha256 "2e7db9808a38ed86d171391ad519c99996c89f2d84a4f075cf6e71253f4641d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3626/magpie-cli-linux-amd64"
      sha256 "b462ce737cb84c6d7593533683eb1d3ad2db7c8e73aa19c6d83e8f544ef2ec97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
