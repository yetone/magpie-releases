class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1841/magpie-cli-darwin-arm64"
      sha256 "809feda4d5f44ccd22e1064e597ae7af5ba820f36a33ec6148315d53144b655f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1841/magpie-cli-darwin-amd64"
      sha256 "9a2c615db256cb20f3748428091f856a83498e6dcbec4cd28bf5e1d771c28016"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1841/magpie-cli-linux-arm64"
      sha256 "eebe071c329262fd6e7ff03d8b5ac3dbbec39c726cc68d5ad09690186eb118ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1841/magpie-cli-linux-amd64"
      sha256 "3ae21f1068eddfe863778a3b1bb474cc25f8cbe8fa260bbbf123e2bcfb55abd8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
