class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1156/magpie-cli-darwin-arm64"
      sha256 "61ac169eb80c9524f1540bf3f24d95af95af1668f3119e3f8e6b0f2120b1485f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1156/magpie-cli-darwin-amd64"
      sha256 "38cf400caeaa72984260926b8fb8c77ae8ded258860bedf14be3b24725030edf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1156/magpie-cli-linux-arm64"
      sha256 "b327576e4bdf8e02f8e8fec675aaa923c867054cc4072c690b131db9202367a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1156/magpie-cli-linux-amd64"
      sha256 "b140b6c3449867f1185e9b639933ffa952410b76a114d700ef100fc980d6b875"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
