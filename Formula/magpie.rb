class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4557/magpie-cli-darwin-arm64"
      sha256 "72547c2c88714238c232ce0fa771fac8f9c55bffb6869b041070e31a46eb4bb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4557/magpie-cli-darwin-amd64"
      sha256 "bc15961565179bd84fadab1df2b8f3cf235b0b0701bcd6a34f998f8bab8d4e65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4557/magpie-cli-linux-arm64"
      sha256 "969ac750a0b803c89845c52d215499c8bb110ad6d977de40311558d9f4d399bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4557/magpie-cli-linux-amd64"
      sha256 "8c8ecef662d22b004d3aa11b6c2977fffb8685808673d03ab56c5559197a9486"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
