class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.977/magpie-cli-darwin-arm64"
      sha256 "5f91223fb58dc30794b471b843fd6ede245d2c0c3611a1d05bea878edaeac3c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.977/magpie-cli-darwin-amd64"
      sha256 "414f334b0b82824b46780b847e3c3489d264172d5ed7a17846ed019178cd248e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.977/magpie-cli-linux-arm64"
      sha256 "94ca7f119e65731e97980b7bf3a99b87edb9bc169e27af9c9385629707d27738"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.977/magpie-cli-linux-amd64"
      sha256 "fa226ba5c3ac02fa806f7db354748d98c4957a9d2234c912345d7d9dfcfe5005"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
