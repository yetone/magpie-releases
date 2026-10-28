class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1844/magpie-cli-darwin-arm64"
      sha256 "e52ea1c04c317e89550727603fe07f970638a3fd2dab5d23b703259baa43cadd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1844/magpie-cli-darwin-amd64"
      sha256 "7f20b039844e24d056836f0b0210355bf45acf2ba77e8a3b0d2bc069a2fce5a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1844/magpie-cli-linux-arm64"
      sha256 "2008d8f4ce02863503825c06ba7726ccb22baa7449d668275f05674497a1fdcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1844/magpie-cli-linux-amd64"
      sha256 "5300fbfd3301389491ed9730ee05c2d7090491796d61697f8ae283ed46cc12eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
