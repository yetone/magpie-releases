class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2590/magpie-cli-darwin-arm64"
      sha256 "1addee068448b605c0f5db6e0d588a9faa3433d55ec39414c946d66da814fbeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2590/magpie-cli-darwin-amd64"
      sha256 "0356583300c9ab374b5951c43ce6b0719e713edc682a085b9064672e035c1457"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2590/magpie-cli-linux-arm64"
      sha256 "bbf6774d0b0db2ef0d00a47a46027aa99a2d4473bb058700281be48e2cac38c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2590/magpie-cli-linux-amd64"
      sha256 "ba107b8445e80457274939b68a9fd053eda73e2ed7536ce40b6f9c526caf156d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
