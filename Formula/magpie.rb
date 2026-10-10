class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1160/magpie-cli-darwin-arm64"
      sha256 "136288c0ce92b20f6eb3f3fcb8e74b1a6989dab2dcaea253924f6ecbe56c04d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1160/magpie-cli-darwin-amd64"
      sha256 "6886de72e5692a0ed4f42c8493c4531ae70c38f100c700ba3d3f4a338bf7e67c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1160/magpie-cli-linux-arm64"
      sha256 "594fc0d209f28548dd1bf0ccca42b4af22e38f994d66147caafba4aedd1c50ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1160/magpie-cli-linux-amd64"
      sha256 "775106b0d38f7140d5d28fe1dfba083a87da45301b4eb97c618bf84751730dbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
