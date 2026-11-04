class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2952/magpie-cli-darwin-arm64"
      sha256 "1f9d48a5acd608443e98ae2b7b7f06fa833da9c8b349c831ec0c37a6d2f1c3a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2952/magpie-cli-darwin-amd64"
      sha256 "323bc9cac725e318645f0615abbda1de1e78fa5b6f176e89b4dd533cebc9900e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2952/magpie-cli-linux-arm64"
      sha256 "3b6e64bdac43ad5594c02b626e7b52854b5a7d760eb7126deeeb9e171a5d6364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2952/magpie-cli-linux-amd64"
      sha256 "eb10f9dc426733a5b3721c51da341e1825ed6ee4a333c4d5091ade18ea1e8eb8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
