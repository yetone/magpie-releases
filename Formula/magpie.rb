class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3577/magpie-cli-darwin-arm64"
      sha256 "ec62bc096222c052b10feba066cc61728d54c9f8e0b7db568335226d346a2cb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3577/magpie-cli-darwin-amd64"
      sha256 "e2b6b1930416b668d5d52e9fd9971cdcc7fcb8eebf91633418551144d232b5e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3577/magpie-cli-linux-arm64"
      sha256 "00160292d05f4a0460ba9dbf22a72895bb76b4521c8ba303b9ca45817cfa5980"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3577/magpie-cli-linux-amd64"
      sha256 "e07e0ddff3b825c5c2b1749cdb094de64bc2bbf273a8e4713217222466555d61"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
