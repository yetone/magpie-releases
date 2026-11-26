class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4896/magpie-cli-darwin-arm64"
      sha256 "2cb4e9b1a4421d752171925c407d7733f8ddabdb50800d3b3348bfc086c5fc75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4896/magpie-cli-darwin-amd64"
      sha256 "bc1c1a4130945161357bf047792b706e01df97609a181a26d7aae245b2fcd0ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4896/magpie-cli-linux-arm64"
      sha256 "d72ae24b6a2685889aba05c49e27718d483cd4ed0cbea84adfbde0e349df5624"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4896/magpie-cli-linux-amd64"
      sha256 "84c4381aa3a5e900d9ba407d484bed129e4bcc6262ca98560b97c4739fad0b74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
