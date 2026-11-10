class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3544/magpie-cli-darwin-arm64"
      sha256 "7db1ec4fd272959dc85d592984e1d81f144f60fa7290e9c774cd263cddcb441c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3544/magpie-cli-darwin-amd64"
      sha256 "9af7300da9f16972013cf6b958f7c07048a785fa6f0106305fd8764d6b0f8c0d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3544/magpie-cli-linux-arm64"
      sha256 "58afefec0dd750b6323a662da13e97ed5bebf0507ea585b4ead29d5dadfa2f90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3544/magpie-cli-linux-amd64"
      sha256 "57523292e52a0519d08df459a99d913642ac449bcdc51eb84b2cbf2dac6aecd7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
