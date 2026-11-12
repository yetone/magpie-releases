class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3903/magpie-cli-darwin-arm64"
      sha256 "6fbdc7d0c79e03991729cabd709ac418864d1e796d3c04e84874c0a557a8f935"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3903/magpie-cli-darwin-amd64"
      sha256 "1a3bca08e743f735d8aee9b2dbc5e9c5024e2a7bd1b4dfa0c9d6d58bd614e446"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3903/magpie-cli-linux-arm64"
      sha256 "bd2c75b7405f66b5ba88994d5cdcfcc18bf17e2adfe889bb2744542e37f7a076"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3903/magpie-cli-linux-amd64"
      sha256 "68f91943165bbe21907ca3ea291d43caed91f678f2d5e171c0f8137710775468"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
