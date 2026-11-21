class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4630/magpie-cli-darwin-arm64"
      sha256 "77bc346ccd933fe7cecfc192d2e9fc1917255e875c46d4a7fb05e6fdc03018b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4630/magpie-cli-darwin-amd64"
      sha256 "53db798585150d8239a52893c9c198fd507c774bf567b2cdf76cf86a82eb44f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4630/magpie-cli-linux-arm64"
      sha256 "0c954b3f78ddf773308758c908260d6642af6cf5cbc329ac6b45ae56b26835bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4630/magpie-cli-linux-amd64"
      sha256 "a279e499854c36fcd731a89edbe64008bc31b7ea5596dd4149d09556ffff0885"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
