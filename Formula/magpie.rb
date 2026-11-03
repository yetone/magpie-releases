class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2796/magpie-cli-darwin-arm64"
      sha256 "1d3f1b1f1d7ce5d1ca772d2084519abf97a7402c2f6c27cb79f16b7dd9740d95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2796/magpie-cli-darwin-amd64"
      sha256 "4e8d7399fd816b69d82c9a063516908cdc24a24af740955b8fbd746a1a1b24a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2796/magpie-cli-linux-arm64"
      sha256 "bc5e0f0141c21509a015707682cb05a714931ef32328e13e0708d7ab07757875"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2796/magpie-cli-linux-amd64"
      sha256 "c4abdb5c73f3e4bb4259833c77588bd0e8965a3de5cdc3934796422455fb52a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
