class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3689/magpie-cli-darwin-arm64"
      sha256 "40e5f3c4933a23a392958daf71815c96b9de69c55c6a99984e3e747c46f67970"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3689/magpie-cli-darwin-amd64"
      sha256 "2e0bed6085722b0e338afcf3467410ff5cb9adc5fbe0f80fb0db49b5c4fc304b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3689/magpie-cli-linux-arm64"
      sha256 "affcd16d9300a6c835d403cc2b2d67d9a992c812168ed6ca16d47ee0cd870491"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3689/magpie-cli-linux-amd64"
      sha256 "4813f4da92dbc026e5e373ea6019e425210054483cd4095c37d5f3495c1aff2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
