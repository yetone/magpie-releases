class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3616/magpie-cli-darwin-arm64"
      sha256 "3f9fa5992b9ca52c125bbaca27018bc3dad0a75ca4da337748202b672642bcca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3616/magpie-cli-darwin-amd64"
      sha256 "360cda76eacfc309fe7519e45752229887b06dde98dd516ef269be01f9af51c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3616/magpie-cli-linux-arm64"
      sha256 "7c3611ce50debe4f101d51ade644550bd32b22a52cd48a97c92607da15b3696c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3616/magpie-cli-linux-amd64"
      sha256 "05dd6e4c82be30110d8c984b9463701566ac74c0cad3b8e47bb98062828b0a41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
