class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1030/magpie-cli-darwin-arm64"
      sha256 "b1aff980b80ef463b075630661669485ddcc922600e9ae582d9a8c69167a057d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1030/magpie-cli-darwin-amd64"
      sha256 "a3874cdc94eecb5dd2baae34fe6f494762dd68228e9c4bec3a9da6a7fb1d3805"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1030/magpie-cli-linux-arm64"
      sha256 "5d5f4635043cd20702416bd0c019d81be92085ae4a7d2b9de5134e9231311a7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1030/magpie-cli-linux-amd64"
      sha256 "89c543fcf270113571eb380ee6aa73ba87ef782c53babc90113a9fc8fb961195"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
