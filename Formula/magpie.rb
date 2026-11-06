class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3149/magpie-cli-darwin-arm64"
      sha256 "cfcd826e318f6b99341865d355c09eb1364db28ae95f1a016d405922ab5cc00b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3149/magpie-cli-darwin-amd64"
      sha256 "ec90e5114f049a9b42488a8dae7595fd7493a391802c9abaeb7f34708c13ade4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3149/magpie-cli-linux-arm64"
      sha256 "1b5c1ffa86b92388c3bf1cf4c6e0f7695f6dace0a73057372df3d3a824143763"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3149/magpie-cli-linux-amd64"
      sha256 "eb5f968fb28f7cdd9b4df9eefe64d6f85cb8eec24100bd25978e4fd58f41ae1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
