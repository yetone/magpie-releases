class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2973/magpie-cli-darwin-arm64"
      sha256 "325d64dd16df131cb9bf99c24bfb0a85159b127555cf05cc2adf66c7e0c3cdf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2973/magpie-cli-darwin-amd64"
      sha256 "6602689451a290e1db17460557821809a26b4880fce0e1adf9054bbc3977e200"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2973/magpie-cli-linux-arm64"
      sha256 "801f91d9b83040c222a78e2b9a91881b963f9c0b150520915fd8a6470c3a1364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2973/magpie-cli-linux-amd64"
      sha256 "46219274203877161492204f53fe864b00e21019b3c90c48bfa550e62571d20c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
