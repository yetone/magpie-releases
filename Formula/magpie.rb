class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1963/magpie-cli-darwin-arm64"
      sha256 "df490e13a9da065fb583a6dc6079c49beea9f1818934f73b3641930a5e7122c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1963/magpie-cli-darwin-amd64"
      sha256 "b0cab75261de811543334cc929f653337c338fffa4d5fb99d86c1a35c2e38ba5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1963/magpie-cli-linux-arm64"
      sha256 "a0b0afead74c4d60fa1001d6ca5a33ee32cabb6a65eea8078d73c2334b3ffcf6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1963/magpie-cli-linux-amd64"
      sha256 "29210933393dd98e5249b3d6d589d48432f2677c39073e8e37902b40bd961600"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
