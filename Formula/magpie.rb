class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3020/magpie-cli-darwin-arm64"
      sha256 "af01022248c66da5d06b975741d3d16391f15e5f7c1bba1f1337e3625001ff04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3020/magpie-cli-darwin-amd64"
      sha256 "834ff58eb0caf57f945bd50f0482d096a0c482d3bc73da3d7b4c6de5606db946"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3020/magpie-cli-linux-arm64"
      sha256 "6d4137e40772143215b56d5022bfe39d62853707f1ff62c89277a22146e3a8fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3020/magpie-cli-linux-amd64"
      sha256 "6b2cc0fc875dfd2777483ae2c9463322550c55d4029ec7403277c0bca041897b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
